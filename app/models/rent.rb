class Rent < ActiveRecord::Base
  belongs_to :client
  belongs_to :car
  
  validates :client_id, :car_id, presence: true, numericality: {greater_than: 0}


  scope :active, lambda {where(return_date: nil)}
  scope :inactive, lambda {where.not(return_date: nil)}

end
