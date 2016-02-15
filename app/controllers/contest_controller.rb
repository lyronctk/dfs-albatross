class ContestController < ApplicationController
	def index
		@contests = Contest.all
	end
end
