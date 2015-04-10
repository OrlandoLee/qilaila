class CreateNewDays < ActiveRecord::Migration
  def change
    create_table :new_days do |t|
      t.text :comment
      t.date :date

      t.timestamps
    end
  end
end
