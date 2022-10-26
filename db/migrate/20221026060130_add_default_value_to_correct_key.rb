class AddDefaultValueToCorrectKey < ActiveRecord::Migration[6.1]
  def change
    change_column :options, :correct_key, :boolean, default: false
  end
end
