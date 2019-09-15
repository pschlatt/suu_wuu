class Api::V1::ForecastController < ApplicationController

  def index
    render locals: {facade: ForecastFacade.new(params[:location]).forecast}

  end

end
