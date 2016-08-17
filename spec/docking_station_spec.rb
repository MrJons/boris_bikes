require 'docking_station'

docking_station = DockingStation.new
bike = docking_station.release_bike

describe DockingStation do

  it "when asking DockingStation to release_bike, a bike is released" do
    expect(docking_station).to respond_to(:release_bike)
  end

  it "released working bikes" do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  it "docks bike at docking station" do
    expect(docking_station).to respond_to(:bike)
    end

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe "#release_bike" do
    it "releases a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike}.to raise_error "no bikes available"
    end
  end

end
