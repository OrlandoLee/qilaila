class Question < ActiveRecord::Base
  has_many :answers
  has_many :potential_answers
end
