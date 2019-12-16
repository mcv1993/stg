class Infosheetmod::SectionsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    render json: Section.where(client_id: current_client.id)
  end
  
  def new
    @section = Section.new
    @info = Info.new
  end

  def create
    @section = current_client.sections.create(section_params)
    redirect_to infosheetmod_client_path(current_client.id)
  end

  def show
    @sections = Section.find(params[:id])
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
