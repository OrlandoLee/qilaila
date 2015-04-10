class DinnerImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :dinner
end
