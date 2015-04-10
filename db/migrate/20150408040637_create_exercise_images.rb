class CreateExerciseImages < ActiveRecord::Migration
  def change
    create_table :exercise_images do |t|
      t.integer :exercise_id
      t.string :image

      t.timestamps
    end
  end
end
