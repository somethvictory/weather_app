require 'rails_helper'

describe Weather, :vcr do
  subject { Weather.new('Phnom Penh', 'Cambodia') }

  it 'returns current city name', '#city' do
    expect(subject.city).to eq 'Phnom Penh'
  end

  it 'returns current country name', '#country' do
    expect(subject.country).to eq 'Cambodia'
  end

  it 'returns current temperature', '#temp' do
    expect(subject.temp).to eq 306.15
  end

  it 'returns current humidity', '#humidity' do
    expect(subject.humidity).to eq 63
  end

  it 'returns current pressure', '#pressure' do
    expect(subject.pressure).to eq 1007
  end

  it 'returns current wind speed', '#wind_speed' do
    expect(subject.wind_speed).to eq 3.6
  end

  it 'returns current weathers', '#weathers' do
    expect(subject.weathers).to eq ['Clouds']
  end
end
