class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end


	def new
	end

	def create
		@event = Event.new(alert_params)
		@event.save
		redirect_to @event
	end

	private

		def alert_params
			params.require(:event).permit(:title, :info)
		end
end
