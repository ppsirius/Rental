class Model < ActiveRecord::Base
  has_many :cars
  belongs_to :brand
  
  validates :model_name, presence: true, uniqueness: true, format: {with: /\A[a-zA-Z]+\z/}
  validates :brand_id, presence: true, numericality: {greater_than: 0}
end
