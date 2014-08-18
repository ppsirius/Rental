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

end
