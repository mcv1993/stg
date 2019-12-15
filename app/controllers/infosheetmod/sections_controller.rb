class Infosheetmod::SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :current_client
  
  def index
    render json: Section.where(client_id: current_client.id)
  end
  
  def new
    @section = Section.new
  end

  def create
    @section = current_client.sections.create(section_params)
    redirect_to infosheetmod_client_path(current_client.id)
  end

  def show
    @clients = current_client
    @sections = Section.find(params[:id])
    @info = Info.all
  end

  private

  def section_params
    params.require(:section).permit(:title, :user_id)
  end

  def current_client
    @current_client ||= Client.find(params[:client_id])
  end


end
