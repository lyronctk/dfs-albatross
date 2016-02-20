class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :name
      t.date :date_time
      t.float :entry_price
      t.integer :num_entries
      t.string :contest_type

      t.timestamps null: false
    end
  end
end
