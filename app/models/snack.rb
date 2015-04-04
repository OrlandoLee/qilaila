class Snack < ActiveRecord::Base
   belongs_to :new_day
   mount_uploaders :images, ImageUploader
end
