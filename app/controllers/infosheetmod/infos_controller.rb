class Infosheetmod::InfosController < ApplicationController
    
    def index
        render json: Info.where(section_id: current_section.id)
    end
    
    def new
      @info = Info.new
    end

    def create
        @info = current_section.infos.create(info_params)
        redirect_to infosheetmod_section_path(id: current_section.id)
    end

    private

    def info_params
        params.require(:info).permit(:infotitle)
    end

    helper_method :current_section
    def current_section
        @current_section ||= Section.find(params[:section_id])
    end

end
