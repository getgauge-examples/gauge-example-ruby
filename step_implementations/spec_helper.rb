require_relative "./pages/base_page.rb"
Dir[File.join(File.dirname(__FILE__), './pages/*.rb')].each {|file| require file }


# Define your helpers...
module GaugeRubyExample
	module Helpers
		def customer_page
			GaugeRubyExample::Pages::CustomerPage.new
		end

		def product_page
			GaugeRubyExample::Pages::ProductPage.new
		end

		def product_list_page
			GaugeRubyExample::Pages::ProductListPage.new
		end

	end
end

# Include your helpers!
Gauge.configure do |config|
	config.include GaugeRubyExample::Helpers
end

# https://github.com/jnicklas/capybara#drivers
# Firefox 35 + Selenium has a bug - https://code.google.com/p/selenium/issues/detail?id=8390

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
