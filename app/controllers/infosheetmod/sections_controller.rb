class Infosheetmod::SectionsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @section = Section.new
    @client = Client.find(params[:client_id])
  end
  
  def new
    @section = Section.new
    @client = Client.find(params[:client_id])
  end

  def create
    @section = @current_client.create(section_params)
    redirect_to infosheetmod_client_path(current_client.id)
  end

  private

  def section_params
    params.require(:section).permit(:title)
  end

  helper_method :current_client
  def current_client
    @current_client ||= Client.find(params[:client_id])
  end


end
