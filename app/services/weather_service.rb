require 'open_weather'

class WeatherService
  attr_reader :city, :country

  CITIES = ['Phnom Penh', 'Berlin', 'Paris', 'New York', 'Seoul', 'Toronto', 'Vancouver', 'Sydney']

  def initialize(city, country)
    @city    = city.presence || CITIES.sample
    @country = country
  end

  def info
    @info ||= OpenWeather::Current.city("#{city},#{country}", connection)
  end

  private
  def connection
    WeatherServer.instance.connection
  end
end
