class NewDay < ActiveRecord::Base
  belongs_to :user
  has_one :breakfast
  has_one :lunch
  has_one :dinner
  has_many :snacks
  has_one :exercise
  accepts_nested_attributes_for :snacks
  accepts_nested_attributes_for :breakfast
  accepts_nested_attributes_for :lunch
  accepts_nested_attributes_for :dinner
  accepts_nested_attributes_for :exercise
end
