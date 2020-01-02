class Item < ActiveRecord::Base
  belongs_to :product
  validates :name, presence: true
  validates :desc, presence: true
end
