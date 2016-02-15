class AddScreenNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :screenName, :string
    add_column :users, :email, :string
  end
end
