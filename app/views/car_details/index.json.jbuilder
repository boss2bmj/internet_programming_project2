json.array!(@car_details) do |car_detail|
  json.extract! car_detail, :id, :car_license, :description, :enter_date, :car_category, :car_subcategory, :car_status
  json.url car_detail_url(car_detail, format: :json)
end
