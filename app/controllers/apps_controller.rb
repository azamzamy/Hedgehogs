class AppsController < ApplicationController
  def new
  	@user = User.new
  end

   def create
   	@app = App.new( app_params )
	if @app.save
		# @carrierwaveimages = CarrierwaveImage new("no_user_profile-pic.jpg")
  	end

  def app_params
  params.require(:app).permit(:email, :name, :avatar, :desc, :longdesc, :tag, :incentive, :instructions, {avatars: []})
end
end
	