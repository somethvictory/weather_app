class Weather
  attr_reader :service

  def initialize(city=nil, country=nil)
    @service = WeatherService.new(city, country)
  end

  def city
    @service.city
  end

  def country
    @service.country
  end

  def temp
    @service.info['main']['temp']
  end

  def humidity
    @service.info['main']['humidity']
  end

  def pressure
    @service.info['main']['pressure']
  end

  def wind_speed
    @service.info['wind']['speed']
  end

  def weathers
    @service.info['weather'].map do |weather|
      weather['main']
    end
  end
end
