class AddSubgenreToQuiz < ActiveRecord::Migration[6.1]
  def change
    add_reference :quizzes, :subgenre, foreign_key: true
  end
end
