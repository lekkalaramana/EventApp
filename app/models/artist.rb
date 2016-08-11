class Artist < ActiveRecord::Base
	has_many :event_artists
	has_many :events, through: :event_artists
	

	def self.create_or_update params
		artist = self.where(facebook_url: params[:facebook_url]).first_or_create
		params.stringify_keys!
		params.permit!
		artist.attributes = params
		[artist.save, artist]
	end
end
