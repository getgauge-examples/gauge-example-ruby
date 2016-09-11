module GaugeRubyExample
  module Pages
    class ProductPage < BasePage
      element :id, "#main_content table tbody tr:nth-child(1) td"
      element :title, "#main_content table tbody tr:nth-child(2) td"
      element :description, "#main_content table tbody tr:nth-child(3) td"
      element :author, "#main_content table tbody tr:nth-child(4) td"
      element :price, "#main_content table tbody tr:nth-child(5) td"
      element :delete_button, "#titlebar_right div.action_items span.action_item:nth-child(2) a"

      def verify_author(name)
        verify_attribute(:author, name)
      end

      def delete
        delete_button.click
        page.driver.browser.switch_to.alert.accept
      end

      def verify_attribute(specifier, value)
        assert_equal send(specifier).text, value
      end

      def save_product_id
        Gauge::DataStoreFactory.scenario_datastore.put "product_id", id.text
      end
    end
  end
end
