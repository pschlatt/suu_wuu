require 'pry'
class GiphyApi

  def initialize(forecast)
    @forecast = forecast
  end

  def retrieve_summary
    "party cloudy"
  end

  def modified_query
    response = initial_conn.get("/v1/gifs/search?q=#{retrieve_summary}&api_key=#{ENV["GIPHY_KEY"]}")
    parsed = JSON.parse(response.body)
    binding.pry
  end




  private

  def initial_conn
    conn = Faraday.new(url: "http://api.giphy.com") do |f|
      f.adapter Faraday.default_adapter
    end
  end


end
