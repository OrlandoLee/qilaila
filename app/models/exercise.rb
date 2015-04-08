class Exercise < ActiveRecord::Base
   belongs_to :new_day
   has_many :exercise_images
   accepts_nested_attributes_for :exercise_images
end
