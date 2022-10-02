def sign_up
  visit new_user_registration_path

  fill_in :user_email, :with => 'user@example.ru'
  fill_in :user_username, :with => 'dimas'
  fill_in :user_password, :with => '2345678'
  fill_in :user_password_confirmation, :with => '2345678'

  click_button 'Sign up'
end
