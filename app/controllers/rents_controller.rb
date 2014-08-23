class RentsController < ApplicationController
  before_action :set_rent, only: [:return, :update]


#before_action :authenticate_user!, :except => [:index] 

  def index
    @rents = Rent.all
  end

  def new
    @rent = Rent.new
    @car = Car.find(params[:car_id])

  end

  def create
    @rent = Rent.new(rent_params)
      if @rent.car.state == "available" && @rent.save 
        @rent.car.rent
        redirect_to rents_path, notice: 'Rent was successfully created.'
      else
        render :new
      end
  end

  def update
    if @rent.update(rent_params)
      redirect_to rents_path, notice: 'Dokonano zwrotu samochodu'
    end
  end

  def return
    render '_return_form'
  end

  def destroy
  end

private

  def rent_params
    params.require(:rent).permit(:client_id, :car_id, :plan_return_date, :return_date)
  end

  def set_rent
    @rent = Rent.find(params[:id])
  end

end
