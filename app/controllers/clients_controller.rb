class ClientsController < ApplicationControllers
  before_action :authenticate_user!
  
  def index
    @client = Client.all
  end

  def new
  end

  def create
    @client = Client.create(client_params)
    redirect_to dashboards_path
  end

  def show
    @section = Section.new
  end

  private

  def client_params
    params.require(:client).permit(:clientname)
  end
end
