class Event < ActiveRecord::Base
	has_many :chats, dependent: :destroy
	validates_presence_of :title, :info

end
