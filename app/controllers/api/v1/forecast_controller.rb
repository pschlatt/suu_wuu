class Api::V1::ForecastController < ApplicationController

  def index
    forecast = ForecastFacade.new(params[:location]).forecast
    render json: ForecastSerializer.new(forecast)
    require 'pry'; binding.pry
  end

end
