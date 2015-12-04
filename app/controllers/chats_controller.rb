class ChatsController < ApplicationController
	def create
		@event = Event.find(params[:event_id])
		@chat = @event.chats.create(chat_params)
		redirect_to event_path(@event)
end

private
	def chat_params
		params.require(:chat).permit(:user, :body)
	end
end
