class ClientsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    render json: Client.all
  end

  def new
  end

  def create
    @client = Client.create(client_params)
    redirect_to dashboard_path
  end

  def show
    @section = Section.new
    @clients = Client.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def client_params
    params.require(:client).permit(:clientname)
  end
end
