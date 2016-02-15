class GolfLineupController < ApplicationController
	def index
		@golf_lineups = GolfLineup.all
	end
end
