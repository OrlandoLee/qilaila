class AddQuestionToNewDays < ActiveRecord::Migration
  def change
    add_column :new_days, :question, :text
  end
end
