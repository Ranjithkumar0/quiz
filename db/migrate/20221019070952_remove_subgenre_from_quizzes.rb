class RemoveSubgenreFromQuizzes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :quizzes, :subgenre, null: false, foreign_key: true
  end
end
