class WelcomeController < ApplicationController
  def index
  	if user_signed_in?
    render 'user_home'
  else
    render 'index'
  end
  end
  def show
  	def show
  
end
  end
end
