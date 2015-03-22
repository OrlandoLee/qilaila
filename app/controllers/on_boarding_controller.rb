class OnBoardingController < ApplicationController
  before_action :authenticate_user!
  def new
    @question = Question.first
  end
  
  def create
    id = params[:question][:id]
    @question = Question.find(id)
    params[:question][:potential_answers].each do |content|
      if content.present?
        answer = Answer.find_or_initialize_by(question_id: id, user_id: current_user.id)
        answer.update_attributes(content: content) 
      end
    end
   @question =  @question.next
   if @question.present?
     render :create
   else
     render :finish
   end
  end
end
