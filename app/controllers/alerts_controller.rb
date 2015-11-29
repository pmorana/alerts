class AlertsController < ApplicationController
	def index
		@alerts = Alert.all
	end

	def show
		@alert = Alert.find(params[:id])
	end


	def new
	end

	def create
		@alert = Alert.new(alert_params)
		@alert.save
		redirect_to @alert
	end

	private

		def alert_params
			params.require(:alert).permit(:title, :info)
		end
end
