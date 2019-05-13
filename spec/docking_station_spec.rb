require 'docking_station'
describe DockingStation do

  it 'responds to the method, release bike' do
    expect(DockingStation.new).to respond_to('release_bike')
  end

  it 'Gets a bike and expects it to be working' do
    bike = Bike.new
    expect(bike.working?).to eq(true)
  end

  it 'responds to docking a bike' do
    expect(DockingStation.new).to respond_to('dock_bike')
  end

  it 'checks if a bike is available' do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect(station.bike_count).not_to be_empty
  end

  it 'raises error when there are no bikes' do
    dock = DockingStation.new
    expect { dock.release_bike }.to raise_error('No bikes available')
  end

  it 'raises error when docking station is full' do
    dock = DockingStation.new
    bike = Bike.new
    expect { (DockingStation::DEFAULT_CAPACITY + 1).times { dock.dock_bike(bike) } }.to raise_error('Station is full')
  end

end
