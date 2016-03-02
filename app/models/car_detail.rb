class CarDetail < ActiveRecord::Base
  validates :car_license, presence: true
end
