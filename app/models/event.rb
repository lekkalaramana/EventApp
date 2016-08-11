class Event < ActiveRecord::Base
	belongs_to :city
	has_many :shows
	has_many :event_artists
	has_many :artists, through: :event_artists


	# rails_admin do
 #      		edit do
 #      			field :city do
      				
 #      			end
 #      			field:shows
 #      			field:artists
 #      		end
 #  	end

	def self.create_or_update params
		event = self.where(name: params[:name]).first_or_create
		params.stringify_keys!
		params.permit!
		event.attributes = params
		[event.save, event]
	end
end
