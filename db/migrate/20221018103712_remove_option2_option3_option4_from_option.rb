class RemoveOption2Option3Option4FromOption < ActiveRecord::Migration[6.1]
  def change
    remove_column :options, :option2, :string
    remove_column :options, :option3, :string
    remove_column :options, :option4, :string
  end
end
