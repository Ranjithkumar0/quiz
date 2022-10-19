class AddCorrectKeyToOption < ActiveRecord::Migration[6.1]
  def change
    add_column :options, :correct_key, :boolean
  end
end
