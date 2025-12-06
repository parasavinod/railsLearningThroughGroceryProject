class CreateGroceryItems < ActiveRecord::Migration[8.0]
  def change
    create_table :grocery_items do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.boolean :is_available

      t.timestamps
    end
  end
end
