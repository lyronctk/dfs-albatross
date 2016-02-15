class CreateGolfLineups < ActiveRecord::Migration
  def change
    create_table :golf_lineups do |t|
      t.int :contest_id
      t.string :dk_name
      t.integer :dk_score
      t.int :golfer1
      t.int :golfer2
      t.int :golfer3
      t.int :golfer4
      t.int :golfer5
      t.int :golfer6
      t.float :probability_win
      t.float :probability_mc
      t.float :probability_mf
      t.float :expected_payout

      t.timestamps null: false
    end
  end
end
