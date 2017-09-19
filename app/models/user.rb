class User < ApplicationRecord

mount_uploader :avatar, AvatarUploader
has_many :apps, dependent: :destroy

 devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

end
