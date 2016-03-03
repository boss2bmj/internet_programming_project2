class CreateCarPhotos < ActiveRecord::Migration
  def change
    create_table :car_photos do |t|
      t.string :image_name

      t.timestamps null: false
    end
  end
end
