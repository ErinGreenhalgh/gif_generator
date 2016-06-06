require 'rails_helper'

RSpec.describe Gif, type: :model do
  it {should belong_to(:category)}

  scenario 'it gets an image path from Giphy API' do
    category_name = "thanks"
    gif = Gif.create
    image_path = gif.get_image_path(category_name)
    gif.image_path = image_path


    expect(image_path).to include("http://giphy.com/gifs/")
    expect(gif.image_path).to include("http://giphy.com/gifs/")
  end
end
