class Client < ActiveRecord::Base

  validates :name, :surname, :age, :document_no, :document_type, presence: true
  validates :age, numericality: true, inclusion: {in: 18..100}
  validates :name, uniqueness: true

end
