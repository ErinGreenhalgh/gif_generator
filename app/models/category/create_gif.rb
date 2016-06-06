class Category
  class CreateGif
    attr_reader :category_name
    def initialize(category_name)
      @category_name = category_name
      create_association
    end

    def create_gif
      gif = Gif.new
      image = gif.get_image_path(category_name)
      gif.image_path = image
      gif
    end

    def create_association
      self.last.gif = create_gif(category_name)
    end
  end
end
