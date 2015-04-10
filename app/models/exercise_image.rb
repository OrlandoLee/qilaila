class ExerciseImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :exercise
end
