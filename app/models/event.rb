class Event < ActiveRecord::Base
	has_many :chats
	validates_presence_of :title, :info

end
