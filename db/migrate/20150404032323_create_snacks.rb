class CreateSnacks < ActiveRecord::Migration
  def change
    create_table :snacks do |t|
      t.text :comment
      t.text :explanation
      t.time :time
      t.integer :new_day_id

      t.timestamps
    end
  end
end
