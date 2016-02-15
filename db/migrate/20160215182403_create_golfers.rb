class CreateGolfers < ActiveRecord::Migration
  def change
    create_table :golfers do |t|
      t.string :name
      t.integer :rank
      t.integer :score_to_par
      t.integer :last_update_hole
      t.integer :last_update_round
      t.float :probability_win
      t.float :probability_make_cut
      t.float :probability_mdf
      t.string :stats

      t.timestamps null: false
    end
  end
end
