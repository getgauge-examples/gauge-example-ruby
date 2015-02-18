module GaugeRubyExample
	module Pages
		class CustomerPage < BasePage
			set_url "#{URL}customers/"

			element :q_username, "#q_username"
			element :q_submit, "#q_submit"
			element :usernameResult, "table#customers tbody tr:nth-child(1) td.username"

			def search_user(username)
				q_username.set username
				q_submit.click
			end

			def verify_user_listed(username)
				assert_equal usernameResult.text, username
			end
		end
	end
end