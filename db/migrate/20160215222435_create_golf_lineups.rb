class CreateGolfLineups < ActiveRecord::Migration
  def change
    create_table :golf_lineups do |t|
      t.integer :contest_id
      t.string :dk_name
      t.integer :dk_score
      t.integer :golfer1
      t.integer :golfer2
      t.integer :golfer3
      t.integer :golfer4
      t.integer :golfer5
      t.integer :golfer6
      t.float :probability_win
      t.float :probability_mc
      t.float :probability_mf
      t.float :expected_payout

      t.timestamps null: false
    end
  end
end
