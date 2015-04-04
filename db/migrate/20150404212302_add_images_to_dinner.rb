class AddImagesToDinner < ActiveRecord::Migration
  def change
    add_column :dinners, :images, :json
  end
end
