class AddGenreToSubgenre < ActiveRecord::Migration[6.1]
  def change
    add_reference :subgenres, :genre, null: false, foreign_key: true
  end
end
