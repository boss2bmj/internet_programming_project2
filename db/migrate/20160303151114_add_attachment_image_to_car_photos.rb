class AddAttachmentImageToCarPhotos < ActiveRecord::Migration
  def self.up
    change_table :car_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :car_photos, :image
  end
end
