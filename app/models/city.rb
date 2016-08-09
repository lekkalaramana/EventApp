class City < ActiveRecord::Base
	has_many :events

	def self.create_or_update params
		city = City.create!(name:params[:name])
	end
end
