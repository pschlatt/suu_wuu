

class ForecastFacade #refactor with SimpleDelegator
  def initialize(location)
    @location = location
  end

  def geo_coordinates
    coords = grab_geocode["results"].first["geometry"]["location"]
    Coordinate.new(coords["lat"], coords['lng'])
  end

  def forecast
    grab_forecast
    require 'pry'; binding.pry
  end

private

  def grab_geocode
    GeocodingApi.new(@location).make_call
  end

  def grab_forecast
    DarkskyApi.new(geo_coordinates.latitude, geo_coordinates.longitude).make_call
  end
end
