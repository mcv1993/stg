class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
   # @user = User.new
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
    params.require(:user).permit(:email, :password, :admin, :superadmin)
  end

end
