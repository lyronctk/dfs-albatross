class VisitorsController < ApplicationController
	skip_before_filter :require_login

	def index
		if user_signed_in?
			redirect_to "/account"
		end
	end
end
