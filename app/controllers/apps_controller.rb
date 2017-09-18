class AppsController < ApplicationController
  def new
  end

   def create
   	@app = App.new( app_params )

  end

  def app_params
  params.require(:app).permit(:email, :name, :avatar, desc:, :longdesc, :tag, :incentive, :instructions, {avatars: []})
end
	