class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.decimal :score
      t.decimal :current_question
      t.decimal :highscore
      t.datetime :last_access

      t.timestamps
    end
  end
end
