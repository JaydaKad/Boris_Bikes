require 'docking_station'
describe DockingStation do

  it 'responds to the method, release bike' do
    expect(DockingStation.new).to respond_to('release_bike')
  end

end
