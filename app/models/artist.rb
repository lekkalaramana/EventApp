class Artist < ActiveRecord::Base
	has_many :events, through: :event_artists


	def self.create params
		artist = Artist.create!(name:params[:name], facebook_url:params[:facebook_url])
	end
end
