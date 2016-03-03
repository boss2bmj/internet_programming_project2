json.array!(@car_photos) do |car_photo|
  json.extract! car_photo, :id, :image_name
  json.url car_photo_url(car_photo, format: :json)
end
