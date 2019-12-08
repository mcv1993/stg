class Infosheets::SectionsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    render json: Section.all
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
end