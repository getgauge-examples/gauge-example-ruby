require 'capypage'

module GaugeRubyExample
	module Pages
		class BasePage < ::Capypage::Page
			include Test::Unit::Assertions

			URL = "https://activeadmin-demo.herokuapp.com/admin/"
		end
	end
end