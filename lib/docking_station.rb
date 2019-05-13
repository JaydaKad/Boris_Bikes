require './lib/bike'

class DockingStation
  attr_reader :bike_count

  def initialize
    @bike_count = 0
  end

  def raise_error
    puts 'I am before the raise'
    raise 'An error has occured'
    puts 'I am after the raise'
  end

  def release_bike
    Bike.new
  end

  def dock_bike
    @bike_count += 1
  end

end
