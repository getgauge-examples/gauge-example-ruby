require_relative "spec_helper.rb"

step "Create a product <table>" do |table|
	create_products_page = GaugeRubyExample::Pages::CreateProductPage.new
	table.rows.each { |row|
		GaugeRubyExample::Pages::CreateProductPage.visit
		create_products_page.create row[0], row[1], row[2], row[3]
	}
end

step "On product page" do
	GaugeRubyExample::Pages::ProductListPage.visit
end

step "Search for product <name>" do |name|
	product_list_page.search name
end

step "Open description for product <name>" do |name|
	product_list_page.open_first_product
end

# the order of parameters is important, the names do not matter!
step "Verify product author as <author>" do |author_name|
	product_page.verify_author author_name
end

step "Delete this product" do
	product_page.delete
end

step "On new products page" do
	GaugeRubyExample::Pages::CreateProductPage.visit
end