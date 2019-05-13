require './lib/bike'

class DockingStation
  attr_reader :bike_count

  def initialize
    @bike_count = 0
  end

  def release_bike
    if @bike_count < 1
      raise "No Bikes available"
    else
      Bike.new
    end
  end

  def dock_bike
    @bike_count += 1
  end

end
