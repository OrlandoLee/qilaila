class Snack < ActiveRecord::Base
   belongs_to :new_day
   has_many :snack_images
    accepts_nested_attributes_for :snack_images
end
