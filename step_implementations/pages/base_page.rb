require 'capypage'
require 'test/unit'

module GaugeRubyExample
  module Pages
    class BasePage < ::Capypage::Page
      include Test::Unit::Assertions

      URL = ENV["APP_ENDPOINT"]
      ADMIN_URL = "#{URL}admin/"
    end
  end
end
