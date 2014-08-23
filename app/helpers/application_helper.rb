module ApplicationHelper

  def car_ready(car)
    return true if car.state == "available"
  end

end
