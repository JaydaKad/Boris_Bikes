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

end
