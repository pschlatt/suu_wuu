class GiphyApi

  def initialize(forecast)
    @forecast = forecast
  end

  def retrieve_summaries

  end




  private

  def conn
    conn = Faraday.new(url: "api.giphy.com/v1/gifs/search") do |f|
      f.params[]
    end

  end


end
