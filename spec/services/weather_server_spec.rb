require 'rails_helper'

describe WeatherServer do
  it 'cannot create a new instance' do
    expect { WeatherServer.new }.to raise_error NoMethodError
  end

  it 'returns connection with APPID from ENV' do
    expect(WeatherServer.instance.connection).to eq({APPID: ENV['APPID']})
  end
end

