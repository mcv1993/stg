class Module::UsermodsController < ApplicationController
  def show
    @user = User.new
  end

end
