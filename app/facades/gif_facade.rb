class GifFacade

  def initialize(forecast)
    @forecast = forecast
  end


  private

  def grab_gifs
    GiphyApi.new(@forecast)
  end


end
