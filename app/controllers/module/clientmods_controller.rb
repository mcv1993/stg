class Module::ClientmodsController < ApplicationController

  def index
  end
  
  def show
    @client = Client.new
  end

end
