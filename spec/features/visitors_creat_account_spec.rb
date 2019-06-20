require 'rails_helper'

feature "Account creation" do
	scenario "allow guest to create contact" do
		visit new_user_registration_path

		fill_in :user_email, with: 'user1@example.com'
		fill_in :user_username, with: 'test_Mike'
		fill_in :user_password, with: '123456'
		fill_in :user_password_confirmation, with: '123456'

		click_button 'Sign up'

		expect(page).to have_content 'You have signed up successfully'		
	end

end