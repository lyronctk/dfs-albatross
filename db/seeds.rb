# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 0..20
	Golfer.create!(name: "Jordan Speith " + i.to_s,
		          rank: rand(1..150), score_to_par: rand(-9..13),
		          last_update_hole: rand(3..18),
		          last_update_round: 3, 
		          probability_win: rand(0.01..0.20), 
		          probability_make_cut: rand(0.20..0.85), 
		          probability_mdf: rand(0.40..0.95), 
		          contest_name: "Pebble Beach",
		          stats: "Birdies+:2|Birdies:7|Par:19|Bogeys:6|Bogeys-:2")

	GolfLineup.create!(rank: rand(10..100000),
					   contest_id: 1234,
					   dk_name: "boozinbuffalo",
					   dk_score: rand(150..420),
					   golfer1: 6789,
					   golfer2: 5445,
					   golfer3: 5645,
					   golfer4: 8877,
					   golfer5: 2122,
					   golfer6: 3435,
					   probability_win: rand(0.001..0.10),
					   probability_mc: rand(0.001..0.20),
					   probability_mf: rand(0.001..0.30),
					   expected_payout: rand(3..10000))
end

Contest.create!(name: "Birdie",
				date_time: "2016-02-01 15:33:06",
				entry_price: 3,
				num_entries: 100000,
				win: rand(0.01..0.05),
				contest_type: "GPP",
				expected_payoff: 50.5)


Contest.create!(name: "Best Ball",
				date_time: "2016-02-01 15:33:06",
				entry_price: 27,
				num_entries: 30000,
				win: rand(0.01..0.05),
				contest_type: "GPP",
				expected_payoff: 140.5)


Contest.create!(name: "Hybrid",
				date_time: "2016-02-01 15:33:06",
				entry_price: 3,
				num_entries: 100000,
				win: rand(0.01..0.05),
				contest_type: "GPP",
				expected_payoff: 140.5)

Contest.create!(name: "Thunderdome",
				date_time: "2016-02-01 15:33:06",
				entry_price: 5300,
				num_entries: 1000,
				win: rand(0.01..0.10),
				contest_type: "GPP",
				expected_payoff: 7200)

Contest.create!(name: "$5 Double Up",
				date_time: "2016-02-01 15:33:06",
				entry_price: 5,
				num_entries: 50000,
				win: rand(0.25..0.70),
				contest_type: "Cash",
				expected_payoff: 100)
