class CreateSubgenres < ActiveRecord::Migration[6.1]
  def change
    create_table :subgenres do |t|
      t.string :title

      t.timestamps
    end
  end
end
