require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many(:gifs)}

  scenario "creating a category creates an associated gif" do
    category = Category.create(name: "thanks")
    gif = Gif.last
    expect(gif.category_id).to eq category.id
    expect(category.gif.image_path).to include("http://giphy.com/gifs/")
  end
end
