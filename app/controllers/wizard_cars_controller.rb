class WizardCarsController < ApplicationController
  include Wicked::Wizard

  steps :new_brand, :new_model , :add_car

  def show
    case step
    when :new_brand
      @brand = Brand.new
    when :new_model
      @model = Brand.find(session["brand_id"]).models.new
    when :add_car
      @car = Model.find(session["model_id"]).cars.new
    end
    render_wizard
  end

  def update
    case step
    when :new_brand
      brand = Brand.create!(brand_params)
      session["brand_id"] = brand.id
      redirect_to wizard_path(:new_model)
    when :new_model
      m = Brand.find(session["brand_id"]).models.create!(model_params)
      session["model_id"] = m.id
      redirect_to wizard_path(:add_car)
    when :add_car
      Model.find(session["model_id"]).cars.create(car_params)
      redirect_to '/'
    end
  end


protected 

  def brand_params
    params.require(:brand).permit(:brand_name)
  end

  def model_params
    params.require(:model).permit(:model_name, :brand_id)
  end

  def car_params
    params.require(:car).permit(:model_id, :mileage, :registration_no, 
      :year_of_manufacture, :state)
  end



end
