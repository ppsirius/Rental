class RentsController < ApplicationController

before_action :authenticate_user!, :except => [:index] 

  def index
  end

  def new
  end

  def update
  end

  def destroy
  end
end
