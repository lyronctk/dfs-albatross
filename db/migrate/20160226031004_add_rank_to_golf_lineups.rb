class AddRankToGolfLineups < ActiveRecord::Migration
  def change
  	add_column :golf_lineups, :rank, :int
  end
end
