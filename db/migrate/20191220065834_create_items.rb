class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.string :desc

      t.timestamps null: false
    end
  end
  def self.down
    drop_table :items

  end
end
