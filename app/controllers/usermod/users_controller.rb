class Usermod::UsersController < ApplicationController
    before_action :authenticate_user!

    def index
        render json: User.all
    end

    def show
        @users = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        redirect_to usermod_static_pages_path
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end
