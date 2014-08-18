class Car < ActiveRecord::Base
  belongs_to :model
  has_many :rents
  has_many :clients, through: :rents

  validates :model_id, presence: true 
  validates :registration_no, presence: true
  validates :year_of_manufacture, presence: true, numericality: {
    greater_than_or_equal_to: 1990, 
    less_than_or_equal_to: Time.now.year.to_i
  }
  validates :mileage, presence: true, numericality: {greater_than: 0}

  def human_state
    if state == ""
      return ""
    end
  end

  state_machine initial: :available do
    state :available
    state :rented
    state :serviced

    event :rent do
      transition :available => :rented
    end

    event :service do
      transition :available => :serviced
    end

    event :return do
      transition :rented => :available
    end

    event :fixed do
      transition :serviced => :available
    end


  end
end
