class WeatherServer
  include Singleton

  def connection
    @connection ||= {APPID: ENV['APPID']}
  end
end
