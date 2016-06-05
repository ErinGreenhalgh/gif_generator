require 'rails_helper'

RSpec.feature "admin creates categories and gifs" do
  pending
  context "they can create a gif" do
    scenario "they see the field to search for a gif" do
      #user has to exist and be logged in as an admin
      #they visit the new_gif path namespaced under admin (check for path)
      #fill_in "category_name" with name_of_category
      #click button "Generate Gif"

      #expect(current_path).to eq gif_path(gif); gifs should be nested under categories but not necessary for the show page
      #expect(page).to have_css("img[src*="#{gif_image_path}"]")
      #within("h1") do
        #expect(page).to have_content(gif.category); this acts like the name of the gif
      end
    end


  end
