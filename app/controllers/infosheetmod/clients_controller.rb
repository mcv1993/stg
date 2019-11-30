class Infosheetmod::ClientsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: Client.all
  end

  def new
    @client = Client.find(params[:id])
  end
end
