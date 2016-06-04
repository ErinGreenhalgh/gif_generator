require "rails_helper"

RSpec.feature "visitor can create an account" do
  scenario "they enter their information to register as a user" do
    new_user_name = "Erin"
    new_user_password = "password"
    visit root_path
    fill_in "Username", with: new_user_name
    fill_in "Password", with: new_user_password
    click_button "Create My Account"

    expect(current_path).to eq user_path(User.last)

    within('#new_user_welcome') do
      expect(page).to have_content("Welcome to GifGenerator, #{User.last.username}"!)
    end

    within('#logout') do
      expect(page).to have_content("Log Out")
    end 

  end
