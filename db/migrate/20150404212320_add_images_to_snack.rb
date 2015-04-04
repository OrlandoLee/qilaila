class AddImagesToSnack < ActiveRecord::Migration
  def change
    add_column :snacks, :images, :json
  end
end
