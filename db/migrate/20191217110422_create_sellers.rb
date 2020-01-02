class CreateSellers < ActiveRecord::Migration
  def self.up
    create_table :sellers do |t|
      t.string :s_name
      t.timestamps null: false
    end
  end
  def self.down
    drop_table :sellers
  end

end
