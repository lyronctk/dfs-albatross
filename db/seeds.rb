# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for i in 0..20
	Golfer.create!(name: "Lyron" + i.to_s,
		          rank: 100, score_to_par: -10,
		          last_update_hole: 17,
		          last_update_round: 3, 
		          probability_win: 0.13, 
		          probability_make_cut: 0.51, 
		          probability_mdf: 0.63, 
		          stats: "Birdies+ : 2, Birdies : 7, Par : 19, Bogeys : 6, Bogeys- : 2")
end
