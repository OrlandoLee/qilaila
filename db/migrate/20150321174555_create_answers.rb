class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :user_id
      t.string :question_id

      t.timestamps
    end
  end
end
