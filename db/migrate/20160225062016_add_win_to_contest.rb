class AddWinToContest < ActiveRecord::Migration
  def change
  	add_column :contests, :win, :float
  	add_column :golfers, :contest_name, :string
  	add_column :users, :DK_name, :string
  end
end
