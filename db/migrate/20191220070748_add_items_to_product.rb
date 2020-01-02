class AddItemsToProduct < ActiveRecord::Migration
  def self.up
    add_reference :items,:product,foreign_key: true
  end
  def self.down
    remove_reference :items,:product,foreign_key: true
  end
end


