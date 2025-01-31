class CreatePoLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :po_line_items do |t|
      t.references :po, null: false, foreign_key: true
      t.integer :quant_whole
      t.integer :quant_half
      t.decimal :price_whole
      t.decimal :price_half
      t.decimal :price_total
      t.decimal :commission
      t.references :part, null: false, foreign_key: true
      t.timestamps
    end
  end
end
