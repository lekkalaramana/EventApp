class Show < ActiveRecord::Base
	belongs_to :event

	def self.create params
		show = Show.create!(event_id:Event.last.id, cost: params[:cost], price: params[:price], duration: params[:duration], startdate: params[:startdate], enddate: params[:enddate])
	end
end
