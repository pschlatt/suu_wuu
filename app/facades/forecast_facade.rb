

class ForecastFacade #refactor with SimpleDelegator
  def initialize(location)
    @location = location
  end

  def geo_coordinates
    coords = grab_geocode["results"].first["geometry"]["location"]
    Coordinate.new(coords["lat"], coords['lng'])
  end

private

  def grab_geocode
    GeocodingApi.new(@location).make_call
  end
end
