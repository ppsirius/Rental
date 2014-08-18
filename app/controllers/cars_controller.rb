class CarsController < ApplicationController
  

  def index
    @cars = Car.all
  end
 
  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def set_car
    @car = Car.find(params[:id])
  end
  
  def car_params
    params.require(:car).permit(:milage, :registration_no, :year_of_manufactur, :model_id)
  end

end
