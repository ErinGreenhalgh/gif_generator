require "rails_helper"

RSpec.feature "visitor can create an account" do
  scenario "they enter their information to register as a user" do
    new_user_name = "Erin"
    new_user_password = "password"

    visit new_user_path

    fill_in "Username", with: new_user_name
    fill_in "Password", with: new_user_password
    click_button "Create My Account"

    expect(current_path).to eq user_path(User.last)

    within('#user_welcome') do
      expect(page).to have_content("Howdy, #{User.last.username}!")
    end

  end

end
