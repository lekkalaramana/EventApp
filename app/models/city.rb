class City < ActiveRecord::Base
	has_many :events, :foreign_key =>'city_id', :class_name => 'Event'

	def self.create_or_update params
		city = City.create!(name:params[:name])
	end
end
