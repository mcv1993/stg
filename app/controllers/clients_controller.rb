class ClientsController < ApplicationController
  
  def index
    @client = Client.all
  end

  def create
    @client = Client.create(client_params)
    redirect_to root_path
  end

  def show
    @client = Client.find(params[:id])
    @section = Section.new
  end

  private

  def client_params
    params.require(:client).permit(:clientname)
  end
end
