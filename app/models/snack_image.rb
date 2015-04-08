class SnackImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :snack
end
