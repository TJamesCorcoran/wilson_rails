class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :house_number
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
