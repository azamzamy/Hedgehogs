class App < ApplicationRecord

mount_uploader :avatar, AvatarUploader
mount_uploaders :photos, AvatarUploader
 belongs_to:user
end
