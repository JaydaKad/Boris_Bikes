require 'bike'

class DockingStation
  attr_reader :bike_count

  def initialize
    @bike_count = 0
  end

  def release_bike
    Bike.new
  end

  def dock_bike
    @bike_count += 1
  end

end
