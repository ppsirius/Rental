class ClientsController < ApplicationController
  


  def index
    @clients = Client.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
