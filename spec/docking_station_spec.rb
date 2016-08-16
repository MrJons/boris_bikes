require 'docking_station'

docking_station = DockingStation.new
bike = docking_station.release_bike

describe "docking station" do

  it "when asking DockingStation to release_bike, a bike is released" do
    expect(docking_station).to respond_to(:release_bike)
  end

  it "When asking if bike is working, passes true." do
    expect(docking_station.working(bike)).to eq true
  end

  it "released working bikes" do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
end