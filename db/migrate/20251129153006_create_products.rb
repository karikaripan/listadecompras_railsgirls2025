class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.timestamps
      t.string :name
      t.float :price 
      t.integer :quantity
    end
  end
end
