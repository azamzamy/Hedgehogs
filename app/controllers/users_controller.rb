class UsersController < ApplicationController
before_action :authenticate_user!
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
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
      
  end

def create
    
end
  

private
    def user_params
      params.require(:user).permit(:f_name, :l_name, :password, :password_confirmation, :avatar, :bio)
  end
end
