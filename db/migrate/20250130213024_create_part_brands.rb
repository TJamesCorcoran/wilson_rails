class CreatePartBrands < ActiveRecord::Migration[7.1]
  def change
    create_table :part_brands do |t|
      t.string :name
      t.string :group_major
      t.string :group_minor

      t.timestamps
    end
  end
end
