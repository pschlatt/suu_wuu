class Api::V1::ForecastController < ApplicationController

  def index
    render locals: {facade: ForecastFacade.new(params[:location]).geo_coordinates}
    require 'pry'; binding.pry
  end

end
