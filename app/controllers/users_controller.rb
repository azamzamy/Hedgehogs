class UsersController < ApplicationController

# 	u = User.new
# u.avatar = params[:file] # Assign a file like this, or

# # like this
# File.open('somewhere') do |f|
#   u.avatar = f
# end

# u.save!
# u.avatar.url # => '/url/to/file.png'
# u.avatar.current_path # => 'path/to/file.png'
# u.avatar_identifier # => 'file.png'
 def index
  @users = User.all
 end
 def new
  @user = User.new
     end
 
 def show
 	 @user = User.find(params[:id])
  end

def create
    @user = User.new(user_params)
    if @user.save
          # @carrierwaveimages = CarrierwaveImage new("no_user_profile-pic.jpg")

    	  log_in @user
    	  flash[:success] = "Welcome ^.^ !"
        redirect_to @user
    else
      render 'new'
    end
end
  

private
    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :password, :password_confirmation, :avatar, :bio)
  end
end
