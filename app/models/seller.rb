class Seller < ActiveRecord::Base

  has_many :products, dependent: :destroy
  
  validates_presence_of :s_name

end
