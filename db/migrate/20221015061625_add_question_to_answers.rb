class AddQuestionToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :answers, :answer, null: false, foreign_key: true
  end
end
