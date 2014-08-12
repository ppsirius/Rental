class Brand < ActiveRecord::Base
  validates :brand_name, presence: true, length: (minimum: 2), format: {with: /\A[a-zA-Z]+\z/}
end
