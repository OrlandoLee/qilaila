class CreateDinners < ActiveRecord::Migration
  def change
    create_table :dinners do |t|
      t.text :comment
      t.text :explaination
      t.time :time
      t.integer :new_day_id

      t.timestamps
    end
  end
end
