class ContestController < ApplicationController
	def index
		@contests = Contest.all
	end

	def index_specific
		@contests = Contest.where(:name => params[:name])
	end
end
