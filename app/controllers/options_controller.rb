class OptionsController < ApplicationController
    
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
        params.require(:option).permit(:option1, :option2, :option3, :option4)
      end
end



