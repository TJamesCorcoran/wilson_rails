class CreateSellers < ActiveRecord::Migration[7.1]
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.json :bus_info
      t.references :address, null: false, foreign_key: true
      t.references :seller_vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
