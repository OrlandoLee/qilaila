class OnBoardingController < ApplicationController
  def new
    @question = Question.first
  end
  
  def create
    id = params[:question][:id]
    params[:question][:potential_answers].each do |content|
      Answer.create(question_id: id, content: content) if content.present?
    end
  end
end
