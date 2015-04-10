class CreateSnackImages < ActiveRecord::Migration
  def change
    create_table :snack_images do |t|
      t.integer :snack_id
      t.string :image

      t.timestamps
    end
  end
end
