module GaugeRubyExample
	module Pages
		class ProductListPage < BasePage
			set_url "#{URL}products/"

			element :q_title, "#q_title"
			element :q_submit, "#q_submit"
			element :firstProduct, "#main_content table tbody tr:nth-child(1) td.product a"

			def search(name)
				q_title.set name
				q_submit.click
			end

			def open_first_product
				firstProduct.click
			end
		end
	end
end