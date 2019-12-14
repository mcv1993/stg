class Infosheetmod::InfosController < ApplicationController
    
    def index
        render json: Info.all
    end
    
    def new
      @info = Info.new
      @section = Section.all
    end

    def create
        @info = Info.create(info_params)
        redirect_to infosheetmod_client_section_path(client_id: current_client, id: current_section)
    end

    private

    def info_params
        params.require(:info).permit(:infotitle)
      end

    helper_method :current_client
    def current_client
      @current_client ||= Client.find(params[:client_id])
    end

    helper_method :current_section
    def current_section
        @current_section ||= Section.find(params[:section_id])
    end
end
