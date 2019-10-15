class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
   # @user = User.new
  end

  def create_access_key
    ApiKeyMaker.make_api_key(12)
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :type)
  end

end
