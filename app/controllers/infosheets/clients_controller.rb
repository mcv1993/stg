class Infosheets::ClientsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    render json: Client.all
    render json: Section.all
  end

  def show
    @clients = Client.find(params[:id])
    @sections = Section.new
  end

  def create
    @section = Section.create(section_params)
    redirect_to dashboard_path
  end

  private

  def section_params
    params.require(:section).permit(:title)
  end

end
