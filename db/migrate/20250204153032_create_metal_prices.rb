class CreateMetalPrices < ActiveRecord::Migration[7.1]
  def change
    create_table :metal_prices do |t|
      t.decimal :pt
      t.decimal :pd
      t.decimal :rh
      t.date :date

      t.timestamps
    end
  end
end
