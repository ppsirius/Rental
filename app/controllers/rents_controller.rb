class RentsController < ApplicationController

#before_action :authenticate_user!, :except => [:index] 

  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
    @car = Car.find(params[:car_id]).id

  end

  def create
    @rent = Rent.new(rent_params)
      if @rent.save
        @rent.car.rent
        redirect_to rents_path, notice: 'Rent was successfully created.'
      else
        render :new
      end
  end

  def update
  end

  def destroy
  end

private

  def rent_params
    params.require(:rent).permit(:client_id, :car_id, :plan_return_date)
  end

end
