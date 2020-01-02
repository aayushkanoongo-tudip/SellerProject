class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.integer :model_no, index: { unique: true }
      t.string :name
      t.integer :quantity
      t.integer :price
      t.timestamps null: false
    end
  end

  def down
    drop_table :products

  end
end
