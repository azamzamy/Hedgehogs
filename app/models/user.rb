class User < ApplicationRecord

mount_uploader :avatar, AvatarUploader
has_many :apps, dependent: :destroy
attr_accessible :email, :password, :password_confirmation, :remember_me, :fname, :lname, :avatar, :bio
devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
