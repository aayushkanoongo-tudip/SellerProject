class CreateElectronics < ActiveRecord::Migration
  def self.up
    create_table :electronics do |t|
      t.integer :item_no
      t.string :description

      t.timestamps null: false
    end
  end
  def down.up
    remove_integer :electronics, :item_no
    remove_string :electronics, :description
  end
end
