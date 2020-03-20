module GaugeRubyExample
  module Pages
    class CreateProductPage < BasePage
      set_url "#{ADMIN_URL}products/new"

      element :product_title, '#product_title'
      element :product_description, '#product_description'
      element :product_author, '#product_author'
      element :product_price, '#product_price'
      element :product_submit, '#main_content fieldset.actions input[name=commit]'
      element :product_image_file_name, '#product_image_file_name'

      def create(title, desc, author, price)
        product_title.set title
        product_description.set desc
        product_author.set author
        product_price.set price
        product_image_file_name.set 'not available'
        product_submit.click
      end
    end
  end
end
