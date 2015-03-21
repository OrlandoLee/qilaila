class Question < ActiveRecord::Base
  has_many :answers
  has_many :potential_answers
  
  
  def next
     Question.where("id > ?", id).first
   end

   def prev
     Question.where("id < ?", id).last
   end
end
