class AddAnswerKeyToUserAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :user_answers, :answer_key, :text
  end
end
