class CreateDinnerImages < ActiveRecord::Migration
  def change
    create_table :dinner_images do |t|
      t.integer :dinner_id
      t.string :image

      t.timestamps
    end
  end
end
