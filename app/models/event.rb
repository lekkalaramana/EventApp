class Event < ActiveRecord::Base
	belongs_to :city, :foreign_key =>'city_id', :class_name => 'City'
	has_many :shows, :foreign_key =>'event_id', :class_name => 'Show'
	has_many :artists, through: :event_artists


	def self.create_or_update params
		event = Event.create(city_id: City.last.id, name: params[:name], venue: params[:venue])
		[event.save, event]
	end
end
