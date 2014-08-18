class Client < ActiveRecord::Base
  has_many :rents
  has_many :cars, through: :rents



  validates :name, :surname, :age, :document_no, :document_type, presence: true
  
#  validates :document_type inclusion
  
  
  validates :age, numericality: true, inclusion: {in: 18..100}
  validates :name, uniqueness: true

end
