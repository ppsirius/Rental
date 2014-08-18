class Model < ActiveRecord::Base
  has_many :cars
  belongs_to :brand
  
  validates :model_name, presence: true, uniqueness: true
  validates :brand, :associated => true
end
