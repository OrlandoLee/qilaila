class LunchImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :lunch
end
