class EventArtist < ActiveRecord::Base
	belongs_to :event
	belongs_to :artist

	def self.create params
		eventArtist = EventArtist.create!(event_id: Event.last.id, artist_id: Artist.last.id)
	end
end
