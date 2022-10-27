class UserAnswersController < ApplicationController
  def index
    @user_answer = UserAnswer.all
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.find(params[:question_id])
    @option = @question.options.create(user_answer_params)
    @user_answer = @question.options.create(user_answer_params)
    
    if @user_answer.save
        redirect_to quiz_question_path(@quiz, @question)
    end
  end

  private
  def user_answer_params
    params.require(:user_answer).permit(:correct_key)
  end
end



