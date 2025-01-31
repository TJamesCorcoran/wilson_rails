class CreateSellerVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :seller_vehicles do |t|
      t.string :brand
      t.string :model
      t.string :color
      t.string :license_plate
      t.integer :year

      t.timestamps
    end
  end
end
