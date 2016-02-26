class AddExpectedPayoffToContests < ActiveRecord::Migration
  def change
  	add_column :contests, :expected_payoff, :float
  end
end
