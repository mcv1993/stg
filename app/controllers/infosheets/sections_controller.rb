class Infosheets::SectionsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    render json: Section.where(client_id: current_client.id)
  end

  def new
  end

  def create
    @section = Section.create(section_params)
    redirect_to dashboard_path
  end

  def show
    @infos = Info.new
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
