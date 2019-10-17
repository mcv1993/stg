class Module::DocsController < ApplicationController
  before_action :authenticate_user!

  def show
    @client = Client.all
  end

end
