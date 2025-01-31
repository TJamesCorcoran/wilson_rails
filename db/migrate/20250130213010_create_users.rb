class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :company_name
      t.string :phone
      t.references :address, null: false, foreign_key: true
      t.string :url
      t.decimal :default_profit_margin
      t.boolean :is_broker

      t.timestamps
    end
  end
end
