class Brand < ActiveRecord::Base
  #before_validation :create_brand_from_name

  has_many :models

  validates :brand_name, presence: true
  validates :brand_name, uniqueness: true

end