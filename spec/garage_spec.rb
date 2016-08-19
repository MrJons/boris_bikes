require 'garage'

describe Garage do
  describe "fixes broken bikes" do
    bike = Bike.new
    ds = DockingStation.new
    ds.dock(bike)
    garage = Garage.new
    bike.report_broken
    garage.repair_bike(bike)
    expect(garage.repair(bike)).to eq(bike.report_broken).when fix_bike(true)
  end
end
