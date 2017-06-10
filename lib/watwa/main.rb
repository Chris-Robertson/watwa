# Displays a 10 day temperature forecast for Melbourne
module Watwa
  require 'tty'
  require 'weather-api'

  UTF_8 = Encoding::UTF_8
  C = Weather::Units::CELSIUS

  # Builds a table containing the forecast
  class Table
    # Table array that holds forecast
    attr_accessor :table

    def initialize
      @table = TTY::Table.new header: ['Day',
                                       'Max ' + 176.chr(UTF_8) + 'C',
                                       'Min ' + 176.chr(UTF_8) + 'C']
      @set_colour = SetColour.new
      @forecast = Forecast.new.response.forecasts
    end

    # Runs app
    def run
      build_table
      show_table
    end

    # Pushes each day's weather data into a table
    def build_table
      @forecast.each do |item|
        high = item.high
        low = item.low
        @table << [item.day + ' ' + item.date.day.to_s,
                   @set_colour.colour_c(high),
                   @set_colour.colour_c(low)]
      end
    end

    # Prints the table to the terminal
    def show_table
      system 'clear'
      system 'cls'

      puts 'Melbourne 10 day forecast from Yahoo! weather'
      puts @table.render(:unicode, padding: [0, 1, 0, 1])
    end

    # # Converts celsius to fahrenheit
    # def convert_to_fahrenheit(temp)
    #   temp * 1.8 + 32
    # end
  end

  # Pulls weather data from Yahoo! Weather API via the weather-api gem
  class Forecast
    # Pulls weather forcast from Yahoo Weather
    attr_accessor :response

    def initialize
      # Pull weather forcast from Yahoo Weather
      @response = Weather.lookup_by_location('Melbourne, AU', C)
    end
  end

  # Uses the pastel gem to set string colours
  class SetColour
    def initialize
      @pastel = Pastel.new
    end

    # Sets colour for celsius temperature ranges
    def colour_c(temp)
      if temp >= 30
        @pastel.red(temp)
      elsif temp < 10
        @pastel.bright_blue(temp)
      elsif temp < 18
        @pastel.cyan(temp)
      else
        @pastel.yellow(temp)
      end
    end
  end
end
