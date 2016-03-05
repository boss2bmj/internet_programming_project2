class AddCarIdToCarPhotos < ActiveRecord::Migration
  def change
    add_column :car_photos, :car_id, :integer
  end
end
