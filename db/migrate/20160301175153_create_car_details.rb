class CreateCarDetails < ActiveRecord::Migration
  def change
    create_table :car_details do |t|
      t.string :car_license
      t.text :description
      t.date :enter_date
      t.string :car_category
      t.string :car_subcategory
      t.string :car_status

      t.timestamps null: false
    end
  end
end
