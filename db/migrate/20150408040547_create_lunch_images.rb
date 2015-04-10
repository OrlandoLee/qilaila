class CreateLunchImages < ActiveRecord::Migration
  def change
    create_table :lunch_images do |t|
      t.integer :lunch_id
      t.string :image

      t.timestamps
    end
  end
end
