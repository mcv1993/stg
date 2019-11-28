class InfosController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  def show
    @infos = Info.new
  end
  
end
