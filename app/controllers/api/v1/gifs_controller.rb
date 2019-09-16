class Api::V1::GifsController < ApplicationController

  def index
    forecast = ForecastFacade.new(location_params).forecast
    json = ForecastSerializer.new(forecast)
    render locals: {facade: ForecastFacade.new(location_params).images}
  end

  private

  def location_params
    params.permit(:location)
  end

end
