module GaugeRubyExample
	module Pages
		class EditProductPage < BasePage
      set_url "#{URL}products/:product_id/edit"

      element :title, "#product_title"
			element :description, "#product_description"
			element :author, "#product_author"
      element :update_product, "#product_submit_action input[name=commit]"

      def set_attribute_value(specifier, value)
        send(specifier).set value
      end

      def save
        update_product.click
      end
		end
	end
end
