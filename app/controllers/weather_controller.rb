class WeatherController < ApplicationController
  def show
    @weather = Weather.new(params[:city], params[:country])
  end
end
