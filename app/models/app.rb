class App < ApplicationRecord
  	mount_uploader :avatar, ImageUploader
	mount_uploaders :screenshots, ImageUploader
 	belongs_to:user
end
