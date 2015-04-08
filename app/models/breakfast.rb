class Breakfast < ActiveRecord::Base
  belongs_to :new_day
  has_many :breakfast_images
  accepts_nested_attributes_for :breakfast_images
end
