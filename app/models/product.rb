class Product < ActiveRecord::Base


  validates_uniqueness_of :model_no, scope: :seller_id
  validates :name, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  has_attached_file :image, styles: {small: "150x150>", medium: "200x200>", thumb: "100x100#"}
  validates_attachment_content_type :image, content_type: ["image/jpeg", "image/gif", "image/png","image/jpg"]
  belongs_to :seller
  has_many :items, dependent: :destroy

end

#Paperclip::Attachment.default_options[:default_url] = "/images/:styles/harley.jpeg"
