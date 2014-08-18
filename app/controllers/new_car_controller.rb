class NewCarController < ApplicationController
  include Wicked::Wizard

  steps :new_brand, :new_model , :new_car

  def show
    render_wizard
  end
end
