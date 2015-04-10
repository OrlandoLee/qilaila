class CreateBreakfastImages < ActiveRecord::Migration
  def change
    create_table :breakfast_images do |t|
      t.integer :breakfast_id
      t.string :image

      t.timestamps
    end
  end
end
