class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]


  def index
    @clients = Client.all
  end

  def show
  end

  def edit
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client, notice: 'Klient został prawidłowo dodany'
    else
      render :new
    end
  end

	def update
    if @client.update(client_params)
      redirect_to @client, notice: 'Klient został prawidłowo zaktualizowany'
    else
      render :edit
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_url, notice: 'Client was successfully destroyed.'
  end

private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :surname, :age, :document_no, :document_type)
  end

end

