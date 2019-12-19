class Clientmod::ClientsController < ApplicationController

    def index
      render json: Client.all
    end

    def show
			@clients = Client.find(params[:id])
		end

		def new
			@client = Client.new
		end

		def create
			@client = Client.create(client_params)
			redirect_to clientmod_static_pages_path
		end

		private

		def client_params
			params.require(:client).permit(:clientname)
		end

end
