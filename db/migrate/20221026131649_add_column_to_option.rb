class AddColumnToOption < ActiveRecord::Migration[6.1]
  def change
    add_column :options, :answer, :string
  end
end
