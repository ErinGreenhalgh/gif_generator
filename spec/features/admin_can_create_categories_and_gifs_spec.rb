require 'rails_helper'

RSpec.feature "admin creates categories and gifs" do
  pending
  context "they can create a gif" do
    scenario "they see the field to enter a gif category" do
      admin = create(:user, role: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)
      category_name = "thanks"

      visit new_admin_category_path

      fill_in "Name", with: category_name
      click_button "Generate Gif"

      expect(current_path).to eq category_path(Category.last)

      expect(page).to have_css('img[src*="#thanks"]')

      within("h1") do
        expect(page).to have_content(Category.last.name)
      end
    end
  end


end
