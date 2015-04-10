class Lunch < ActiveRecord::Base
   belongs_to :new_day
   has_many :lunch_images
    accepts_nested_attributes_for :lunch_images
end
