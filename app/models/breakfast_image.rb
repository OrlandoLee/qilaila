class BreakfastImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :breakfast
end
