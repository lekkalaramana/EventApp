class Show < ActiveRecord::Base
	belongs_to :event


	def self.create_or_update params
		show = self.where(event_id: params[:event_id]).first_or_create
		params.stringify_keys!
		params.permit!
		show.attributes = params
		[show.save, show]
	end
end
