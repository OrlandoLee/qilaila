class AddNutriToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nutri, :boolean
  end
end
