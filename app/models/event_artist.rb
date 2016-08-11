class EventArtist < ActiveRecord::Base
	belongs_to :event
	belongs_to :artist

	def self.create_or_update params
		event_artist = self.where(event_id: params[:event_id], artist_id: params[:artist_id]).first_or_create
		params.stringify_keys!
		event_artist.attributes = params
		[event_artist.save, event_artist] 
	end
end
