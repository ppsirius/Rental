class CarsController < ApplicationController
  before_action :set_car, only: [:show, :destroy]

  def index
    @cars = Car.all
  end
  
  def show
  end

  def edit
  end

  def destroy
    @car.destroy
     respond_to do |format|
      format.html { redirect_to root_url, notice: 'Samochód został usunięty' }
      format.json { head :no_content }
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
