class CarsController < ApplicationController
  before_action :set_car, only: [:show]

  def index
    @cars = Car.all
  end
 
  def show
  end

  def new
    @car = Car.new
    @brand = Brand.new
    @model = Model.new
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
    params.require(:car).permit(:milage, :registration_no, :year_of_manufacture, :model_id)
  end

end
