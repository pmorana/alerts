class AlertsController < ApplicationController
	def new
	end

	def create
		render plain: params[:alert].inspect
	end

end
