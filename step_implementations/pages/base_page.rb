require 'capypage'
require 'test/unit'

module GaugeRubyExample
	module Pages
		class BasePage < ::Capypage::Page
			include Test::Unit::Assertions

			URL = "http://localhost:8080/admin/"
		end
	end
end
