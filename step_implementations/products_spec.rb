require_relative 'spec_helper.rb'

step 'Create a product <table>' do |table|
  create_products_page = GaugeRubyExample::Pages::CreateProductPage.new
  table.rows.each do |row|
    GaugeRubyExample::Pages::CreateProductPage.visit
    create_products_page.create row[0], row[1], row[2], row[3]
  end
end

step 'On product page' do
  GaugeRubyExample::Pages::ProductListPage.visit
end

step 'Search for product <name>' do |name|
  product_list_page.search name
end

step 'Open description for product <name>' do |_name|
  product_list_page.open_first_product
end

# the order of parameters is important, the names do not matter!
step 'Verify product author as <author>' do |author_name|
  product_page.verify_author author_name
end

step 'Delete this product' do
  product_page.delete
end

step 'On new products page' do
  GaugeRubyExample::Pages::CreateProductPage.visit
end

step 'Verify product <specifier> as <value>' do |specifier, value|
  product_page.verify_attribute specifier, value
end

step 'Find and store productId for <title>' do |title|
  GaugeRubyExample::Pages::ProductListPage.visit
  product_list_page.search title
  product_list_page.open_first_product
  product_page.save_product_id
end

step 'Open product edit page for stored productId' do
  product_id = Gauge::DataStoreFactory.scenario_datastore.get 'product_id'
  GaugeRubyExample::Pages::EditProductPage.visit product_id: product_id
end

step 'Update product specifier to new value <table>' do |table|
  edit_product_page = GaugeRubyExample::Pages::EditProductPage.new
  table.rows.each do |row|
    edit_product_page.set_attribute_value row[0], row[1]
  end
  edit_product_page.save
end

step 'Check product specifier has new value <table>' do |table|
  table.rows.each do |row|
    product_page.verify_attribute row[0], row[1]
  end
end
