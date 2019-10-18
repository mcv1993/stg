class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: User.all
  end

  def new
   # @user = User.new
  end


  def create
    @user = User.create(user_params)
    redirect_to dashboard_path
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
