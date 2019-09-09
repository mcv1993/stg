class ClientsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @client = Client.all
  end

  def create
    @client = Client.create(client_params)
    redirect_to root_path
  end

  def show
    @section = Section.new
  end

  private

  def client_params
    params.require(:client).permit(:clientname)
  end
end
