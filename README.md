# README

This is a sample Rails app to display weather information from http://openweathermap.org/API based on City and Country.


### Requirments

* Ruby > 2.3.x

* Rails > 5.1.x


### Setup

```
git clone git@github.com:somethvictory/weather_app.git
cd weather_app
bundle install
```

Create a `.env` file and copy app id from `.env.example`

### Startup server

```
rails server
```

### Spec

To run all specs in the project:

```
rake
```
or

```
rspec
```

### Improvements

1. Cache the fetched weather data.
2. Handle the display message when city could not be found.
