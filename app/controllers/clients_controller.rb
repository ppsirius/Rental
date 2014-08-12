class ClientsController < ApplicationController
  def index
  	@clients = Client.all
  end

  def show
  end

  def edit
  end

  def new
  	@client = Client.new
  end

  def create
  	@client = Client.new(client_params)
  		if @client.save
  			redirect_to @client, notice: 'Client was successfully created.'
  		else
  			render :new
  		end
  end

	def update
      if @client.update(client_params)
        redirect_to @client, notice: 'Client was successfully updated.' 
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
		params.require(:client).permit(:name, :surnam, :age, :document_no, :document_type)
	end

end

