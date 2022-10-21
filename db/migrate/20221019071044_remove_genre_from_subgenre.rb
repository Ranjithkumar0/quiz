class RemoveGenreFromSubgenre < ActiveRecord::Migration[6.1]
  def change
    remove_reference :subgenres, :genre, null: false, foreign_key: true
  end
end
