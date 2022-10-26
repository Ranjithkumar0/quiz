class OptionsController < ApplicationController
  def index
    @options = Option.all
  end

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.find(params[:question_id])
    @option = @question.options.new
  end
  
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.find(params[:question_id])
    @option = @question.options.create(option_params)
    
    if @option.save
        redirect_to quiz_question_path(@quiz, @question)
      else
        render :new
      end
  end

  private
  def option_params
    params.require(:option).permit(:option1, :correct_key)
  end
end



