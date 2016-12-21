require_relative 'spec_helper.rb'

step 'On signup page' do
  GaugeRubyExample::Pages::SignUpPage.visit
end

step 'Fill in and send registration form' do
  sign_up_page.signup
end
