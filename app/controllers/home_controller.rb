class HomeController < ApplicationController
#layout false
  def index
  	@menus = Menu.all
  end
end
