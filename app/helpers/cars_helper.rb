module CarsHelper

  def car_state(s)

    if s == "available"
      return "dostępny"
    elsif s == "rented" 
      return "wypożyczony"
    else 
      return "w naprawie"
    end
  end

  def car_rent(car)
    if car_ready(car) == true
      link_to 'Wypożycz', new_rent_path(:car_id => @car.id)
    end
  end


end
