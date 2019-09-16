require 'pry'

class Gif
  @@id = 0
  def initialize(forecast_data, gif_data)
    @@id += 1
    @id = 0
    @time = forecast_data.daily["data"].first["time"]
    @summary = forecast_data.daily["data"].first["summary"]
    @url = gif_data
  end

end
