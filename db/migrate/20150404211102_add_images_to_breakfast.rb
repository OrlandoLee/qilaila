class AddImagesToBreakfast < ActiveRecord::Migration
  def change
    add_column :breakfasts, :images, :json
  end
end
