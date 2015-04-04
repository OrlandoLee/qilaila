class NewDay < ActiveRecord::Base
  belongs_to :user
  has_one :breakfast
  has_one :lunch
  has_one :dinner
  has_many :snacks
  has_one :exercise
end
