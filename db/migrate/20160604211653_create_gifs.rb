class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.text :image_path

      t.timestamps null: false
    end
  end
end
