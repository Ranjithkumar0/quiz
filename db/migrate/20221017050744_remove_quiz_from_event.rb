class RemoveQuizFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_reference :events, :quiz, null: false, foreign_key: true
  end
end
