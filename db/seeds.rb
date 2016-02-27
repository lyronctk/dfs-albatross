# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 0..20
	Golfer.create!(name: "Jordan Speith " + i.to_s,
		          rank: 10, score_to_par: -10,
		          last_update_hole: 17,
		          last_update_round: 3, 
		          probability_win: 0.13, 
		          probability_make_cut: 0.51, 
		          probability_mdf: 0.63, 
		          contest_name: "Pebble Beach",
		          stats: "Birdies+:2|Birdies:7|Par:19|Bogeys:6|Bogeys-:2")

	GolfLineup.create!(rank: 23,
					   contest_id: 1234,
					   dk_name: "boozinbuffalo",
					   dk_score: 240,
					   golfer1: 6789,
					   golfer2: 5445,
					   golfer3: 5645,
					   golfer4: 8877,
					   golfer5: 2122,
					   golfer6: 3435,
					   probability_win: 0.02,
					   probability_mc: 0.1,
					   probability_mf: 0.15,
					   expected_payout: 100)

	Contest.create!(name: "Best Ball" + i.to_s,
					date_time: "2016-02-01 15:33:06",
					entry_price: 3.50,
					num_entries: 100000,
					win: 0.04,
					contest_type: "Cash",
					expected_payoff: 50.5)
end
