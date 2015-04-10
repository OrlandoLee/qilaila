class Dinner < ActiveRecord::Base
   belongs_to :new_day
   has_many :dinner_images
    accepts_nested_attributes_for :dinner_images
end
