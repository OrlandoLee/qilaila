class AddImagesToLunch < ActiveRecord::Migration
  def change
    add_column :lunches, :images, :json
  end
end
