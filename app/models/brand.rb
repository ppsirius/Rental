class Brand < ActiveRecord::Base
  validates :brand_name, presence: true, length: {minimum: 3}, format: {with: /\A[a-zA-Z]+\z/}
end
