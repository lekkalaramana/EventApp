class EventController < ApplicationController
	skip_before_filter :verify_authenticity_token
  def index
  end

  def create
  	# binding.pry
  	city = City.create_or_update(params[:city])
  	status,event=Event.create_or_update(params[:event])
  	artist = Artist.create(params[:artist])
  	eventArtist = EventArtist.create(params[:event])
  	show = Show.create(params[:show])
  end
end
