require 'docking_station'
describe DockingStation do

  it 'responds to the method, release bike' do
    expect(DockingStation.new).to respond_to('release_bike')
  end

  it 'Gets a bike and expects it to be working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'responds to docking a bike' do
    expect(DockingStation.new).to respond_to('dock_bike')
  end

  it 'checks if a bike is available' do
    station = DockingStation.new
    bike = station.release_bike
    station.dock_bike
    expect(station.bike_count).to eq(1)
  end

  it 'raises error' do
    dock = DockingStation.new
    expect { dock.raise_error }.to raise_error('An error has occured')
  end

end
