class Gif < ActiveRecord::Base
  belongs_to :category

  def get_image_path(category_name)
    response = Faraday.get("http://api.giphy.com/v1/gifs/search?q=#{category_name}&api_key=dc6zaTOxFJmzC")
    parsed = JSON.parse(response.body)
    parsed['data'][0]['url']
  end
end
