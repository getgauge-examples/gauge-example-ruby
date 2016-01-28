require 'capypage'
require 'test/unit'

module GaugeRubyExample
	module Pages
		class BasePage < ::Capypage::Page
			include Test::Unit::Assertions

			URL = ENV["APP_ENDPOINT"]
		end
	end
end
