class CarDetail < ActiveRecord::Base
  validates :car_license, presence: true

  belongs_to :admin
  has_many :car_photos, dependent: :destroy
end
