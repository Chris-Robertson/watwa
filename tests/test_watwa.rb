require_relative '../lib/watwa/main.rb'
require 'test/unit'

# Test class for all watwa classes and methods
class TestWatwa < Test::Unit::TestCase
  # Tests for the table class
  def test_table
    test_table = Watwa::Table.new
    test_table.build_table

    assert_equal test_table.table.class, TTY::Table
    assert_equal 32, test_table.convert_to_fahrenheit(0)
    assert_equal 68, test_table.convert_to_fahrenheit(20)
  end

  # Tests for the Forecast class
  def test_forecast
    test_forecast = Watwa::Forecast.new

    assert_equal test_forecast.class, Watwa::Forecast
  end
end
