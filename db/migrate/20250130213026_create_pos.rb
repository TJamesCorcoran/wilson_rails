class CreatePos < ActiveRecord::Migration[7.1]
  def change
    create_table :pos do |t|
      t.string :title
      t.references :seller, null: false, foreign_key: true
      t.datetime :when
      t.integer :order_number
      t.decimal :total_dollars

      t.timestamps
    end
  end
end
