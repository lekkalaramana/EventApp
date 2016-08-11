class City < ActiveRecord::Base
	has_many :events
	

	def self.create_or_update params
		city = self.where(name: params[:name]).first_or_create
		params.stringify_keys!
		params.permit!
		city.attributes = params
		[city.save, city]
	end
end
