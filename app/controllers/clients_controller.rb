class ClientsController < ApplicationControllers
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

  def create_api
    ApiKeyMaker.make_api_key(12)
  end

  private

  def client_params
    params.require(:client).permit(:clientname)
  end
end
