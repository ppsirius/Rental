class Brand < ActiveRecord::Base
  validates :brand_name, presence: true, length: (minimum: 2)
end
