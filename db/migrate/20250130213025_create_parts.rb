class CreateParts < ActiveRecord::Migration[7.1]
  def change
    create_table :parts do |t|
      t.references :part_brand, null: false, foreign_key: true
      t.string :oem_number
      t.string :spec
      t.string :subspec

      t.timestamps
    end
  end
end
