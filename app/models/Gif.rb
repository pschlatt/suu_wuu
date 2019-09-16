require 'pry'

class Gif
  @@id = 0
  def initialize(forecast_data, gif_data)
    @@id += 1
    @id = 0
    @time = forecast_data["time"]
    @summary = forecast_data["summary"]
    @url = gif_data.first["data"].first["images"]["original"]["url"]
  end

end
