

class ForecastFacade #refactor with SimpleDelegator
  def initialize(location)
    @location = location
  end

  def geo_coordinates
    coords = grab_geocode["results"].first["geometry"]["location"]
    Coordinate.new(coords["lat"], coords['lng'])
  end

  def forecast
    Forecast.new(grab_forecast)
  end

  def images
    grab_gifs

  end

private

  def grab_geocode
    GeocodingApi.new(@location).make_call
  end

  def grab_forecast
    DarkskyApi.new(geo_coordinates.latitude, geo_coordinates.longitude).make_call
  end

  def grab_gifs
    GiphyApi.new(forecast).modified_query
  end
end
