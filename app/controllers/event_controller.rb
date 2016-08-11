class EventController < ApplicationController
	skip_before_filter :verify_authenticity_token
  def index
  end

  def create
  	# return_data = {message: "Successfully saved", errors:[]}
  	status, city = City.create_or_update(params[:city])
    event_info = params[:event].merge({city_id: city.id})
  	status, event=Event.create_or_update(event_info)
  	status, artist = Artist.create_or_update(params[:artist])
    eventArtist_info = {event_id: event.id, artist_id: artist.id}
  	status, eventArtist = EventArtist.create_or_update(eventArtist_info)
  	show_info = params[:show].merge({event_id: event.id})
    status, show = Show.create_or_update(show_info)
  end
end
