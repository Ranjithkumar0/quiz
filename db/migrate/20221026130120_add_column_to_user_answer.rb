class AddColumnToUserAnswer < ActiveRecord::Migration[6.1]
  def change
    add_column :user_answers, :user_key, :string
  end
end
