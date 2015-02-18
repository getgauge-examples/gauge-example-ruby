module GaugeRubyExample
	module Pages
		class ProductPage < BasePage
			element :title, "#main_content table tbody tr:nth-child(2) td"
			element :description, "#main_content table tbody tr:nth-child(3) td"
			element :author, "#main_content table tbody tr:nth-child(4) td"
			element :price, "#main_content table tbody tr:nth-child(5) td"
			element :delete_button, "#titlebar_right div.action_items span.action_item:nth-child(2) a"

			def verify_author(name)
				assert_equal author.text, name
			end

			def delete
				delete_button.click
			end
		end
	end
end