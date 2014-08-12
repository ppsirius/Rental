class Brand < ActiveRecord::Base
  has_many :models

  validates :brand_name, presence: true, length: {minimum: 3}, format: {with: /\A[a-zA-Z]+\z/}
end
