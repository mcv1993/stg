class Module::UsermodsController < ApplicationController

  def index
  end

  def show
    @user = User.all
  end
  
end
