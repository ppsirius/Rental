class Rent < ActiveRecord::Base
  belongs_to :client
  belongs_to :car
  
  validates :client_id, :car_id, presence: true, numericality: {greater_than: 0}
end
