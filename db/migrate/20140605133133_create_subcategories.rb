class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :Name
      t.text :Description
      t.references :Category, index: true

      t.timestamps
    end
  end
end
