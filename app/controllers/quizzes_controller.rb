class QuizzesController < ApplicationController

  # skip_before_action :verify_authenticity_token, :only => :check_answer
  before_action :authenticate_user!
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]
  def index
    @quizzes = Quiz.all
  end
  def show
    @quiz = Quiz.find(params[:id])
    @question = @quiz.questions.build
  end

  def new
    @quiz = Quiz.new
  end
  
  def create
    @quiz = Quiz.new(quiz_params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to @quiz, notice: "Quiz created!" }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update_attributes(quiz_params)
      redirect_to @quiz
    else
      render :edit
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy

    redirect_to root_path
  end

  private
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    def quiz_params
      params.require(:quiz).permit(:title)
    end
end

