class EventArtist < ActiveRecord::Base
	belongs_to :event, :foreign_key =>'event_id', :class_name => 'Event'
	belongs_to :artist, :foreign_key => 'artist_id', :class_name => 'Artist'

	def self.create params
		eventArtist = EventArtist.create!(event_id: Event.last.id, artist_id: Artist.last.id)
	end
end
