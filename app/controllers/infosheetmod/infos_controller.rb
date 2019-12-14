class Infosheetmod::InfosController < ApplicationController
    
    def index
        render json: Info.all
    end
    
end
