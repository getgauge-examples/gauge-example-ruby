module GaugeRubyExample
	module Pages
		class SignUpPage < BasePage
      set_url "#{URL}signup/"

      element :username, "#user_username"
      element :email, "#user_email"
      element :password, "#user_password"
      element :password_confirmation, "#user_password_confirmation"
      element :submit, "#new_user input[name=commit]"

      def signup
        new_user_name = "user_#{Time.now.to_i}"
        username.set new_user_name
        email.set "#{new_user_name}@example.com"
        password.set "password"
        password_confirmation.set "password"
        submit.click
        # store the current user in datastore
        Gauge::DataStoreFactory.scenario_datastore.put "current_user", new_user_name
      end
    end
  end
end
