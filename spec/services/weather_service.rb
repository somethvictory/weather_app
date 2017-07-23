require 'rails_helper'

describe WeatherService do
  it 'includes default CITIES' do
    expect(WeatherService::CITIES).to be_an_instance_of Array
  end

  it 'returns json', '#info' do
    expect(WeatherService.info).to be_an_instance_of Hash
  end
end

