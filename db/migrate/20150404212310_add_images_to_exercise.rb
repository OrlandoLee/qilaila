class AddImagesToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :images, :json
  end
end
