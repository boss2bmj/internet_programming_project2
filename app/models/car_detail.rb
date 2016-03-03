class CarDetail < ActiveRecord::Base
  validates :car_license, presence: true
  has_many :car_photos
end
