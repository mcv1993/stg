class Infosheetmod::ClientsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: Client.all
  end

  def new
    @client = Client.new
    @section = Section.new
  end

  def create
    @section = Section.new
  end

  def show
    @clients = Client.find(params[:id])
    @section = Section.all
    @section = Section.new
  end

  private

end
