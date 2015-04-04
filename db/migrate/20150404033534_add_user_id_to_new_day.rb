class AddUserIdToNewDay < ActiveRecord::Migration
  def change
    add_column :new_days, :user_id, :integer
  end
end
