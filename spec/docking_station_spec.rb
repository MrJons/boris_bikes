require 'docking_station'

describe DockingStation do

  it "when asking DockingStation to release_bike, a bike is released" do
    expect(subject).to respond_to(:release_bike)
  end

  it "released working bikes" do
    bikes = Bike.new
    expect(bikes).to be_working
  end

  it "docks bike at docking station" do
    expect(subject).to respond_to(:bikes)
    end

  it "docks something" do
    bikes = Bike.new
    expect(subject.dock(bikes)).to eq [bikes]
  end

  it "returns docked bikes" do
    bikes = Bike.new
    subject.dock(bikes)
    expect(subject.bikes).to eq [bikes]
  end

  describe "#release_bike" do
    it "releases a bike" do
      bikes = Bike.new
      subject.dock(bikes)
      expect(subject.bikes).to eq [bikes]
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error "no bikes available"
    end
  end

  describe "#dock" do
    it "raises error when there is no capacity" do
      20.times {subject.dock Bike.new}
      expect { subject.dock(Bike.new) }.to raise_error "there is no capacity"
    end
  end
end
