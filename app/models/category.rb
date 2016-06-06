class Category < ActiveRecord::Base
  has_many :gifs

  def create_gif
    CreateGif.new(Category.last.name)
  end
end
