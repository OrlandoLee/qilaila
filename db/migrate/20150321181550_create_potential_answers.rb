class CreatePotentialAnswers < ActiveRecord::Migration
  def change
    create_table :potential_answers do |t|
      t.integer :question_id
      t.string :content

      t.timestamps
    end
  end
end
