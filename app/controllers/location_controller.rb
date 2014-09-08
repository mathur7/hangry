class LocationController < ApplicationController

  def index

  end

  def results 
    parameters = { term: 'restaurants', lat:params[:lat],long:params[:long], limit: 1 }
    response = Yelp.client.search('San Francisco', parameters)
    @address = response.businesses[0].location.display_address[0]
    @name = response.businesses[0].name
    @rating = response.businesses[0].rating
    @rating_image = response.businesses[0].rating_img_url_small
    @phone = response.businesses[0].phone
    @image = response.businesses[0].image_url
    # @lat =  response.businesses[0].location.coordinate.latitude
    # @long = response.businesses[0].location.coordinate.longitude
  end

end