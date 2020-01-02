class AddProductsToSeller < ActiveRecord::Migration
  def self.up
    add_reference :products, :seller, foreign_key: true
  end
  def self.down
    remove_reference :products, :seller, foreign_key: true
  end
end


