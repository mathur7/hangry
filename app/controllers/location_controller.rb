class LocationController < ApplicationController

  def index
  end

  def results 
    parameters = { term: 'restaurant', lat:params[:lat],long:params[:long], limit: 1 }
    @response = render json: Yelp.client.search('San Francisco', parameters)
    @response.inspect
    # @address = response.businesses[0].location.display_address[0]
    # binding.pry
    # @name = response.businesses[0].name
    # @lat =  response.businesses[0].location.coordinate.latitude
    # @long = response.businesses[0].location.coordinate.longitude
  end

end