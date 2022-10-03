def sign_up
  visit new_user_registration_path

  fill_in :user_email, :with => 'usqw@example.ru'
  fill_in :user_username, :with => 'egor'
  fill_in :user_password, :with => '3456789'
  fill_in :user_password_confirmation, :with => '3456789'

  click_button 'Sign up'
end
