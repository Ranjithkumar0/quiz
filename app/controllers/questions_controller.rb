class QuestionsController < ApplicationController
    def show
        @quiz = Quiz.find(params[:quiz_id])
        @question = Question.find(params[:id])
      end
    
      def new
        @question = Question.new
      end
    
      def edit
        @quiz = Quiz.find(params[:quiz_id])
        @question = Question.find(params[:id])
      end
    
     def update
        @quiz = Quiz.find(params[:quiz_id])
        @question = Question.find(params[:id])
        if (@question.update(question_params))
           redirect_to @quiz
        else
          render :edit
         end
      end

    
      def create
        @quiz = Quiz.find(params[:quiz_id])
        @question = @quiz.questions.create(question_params)
        redirect_to quiz_path(@quiz)
      end

      def destroy
        @quiz = Quiz.find(params[:quiz_id])
        @question = @quiz.questions.find(params[:id])
        @question.destroy
        redirect_to quiz_path(@quiz)
      end
      private
    def question_params
      params.require(:question).permit(:body)
    end
end

# @comment = @event.comments.create(params[:comment].permit(:user_id, :body))

# @article = Article.find(params[:article_id])
#       @comment = @article.comments.find(params[:id])
#       @comment.destroy
#       redirect_to article_path(@article)