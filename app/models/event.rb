class Event < ActiveRecord::Base
	belongs_to :city
	has_many :shows
	has_many :event_artists
	has_many :artists, through: :event_artists


	def self.create_or_update params
		event = Event.create(city_id: City.last.id, name: params[:name], venue: params[:venue])
	end
end
