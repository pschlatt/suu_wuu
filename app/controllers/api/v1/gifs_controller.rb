class Api::V1::GifsController < ApplicationController

  def index
    enter = ForecastFacade.new(location_params)
    render json: GiphySerializer.new(enter.images)
  end

  private

  def location_params
    params.permit(:location)
  end

end
