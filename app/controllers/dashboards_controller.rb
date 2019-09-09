class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def new
    #access to new user form
    #access to new client, section, info forms
    #@user = User.new
  end

  def create
    #submit data from new user form to create user
    #submit data from new client, section, info forms
  end

  def show
    #show create buttons for @user, @client, etc
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
