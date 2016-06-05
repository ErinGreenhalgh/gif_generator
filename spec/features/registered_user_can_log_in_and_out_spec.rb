require 'rails_helper'

RSpec.feature "registered user can log in and out" do
  context "user is not logged in" do
    scenario "they enter information to log in" do
      user = create(:user)
      visit login_path

      fill_in "Username", with: user.username
      fill_in "Password", with: user.password
      click_button "Log In"

      expect(current_path).to eq user_path(user)

      within('#user_welcome') do
        expect(page).to have_content("Howdy, #{user.username}!")
      end

      expect(page).to have_content("Log Out")
    end
  end

  context "user is logged in" do
    scenario "they log out" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return( user )

      visit user_path(user)
      expect(page).to have_content("Log Out")

      click_link "Log Out"
save_and_open_page
      expect(page).to have_content("Log In")
      expect(page).not_to have_content("Log Out")
    end
  end




end
