require 'van'

describe 'van' do

  it 'will collect broken bikes from the docking station' do
    ds = DockingStation.new
    bike = Bike.new
    van = Van.new
    bike.report_broken
    ds.dock(bike)
    expect(van.collect([bike])).to eq [bike]
  end

  it 'will collect working bikes from the garage' do
    garage = Garage.new
    bike = Bike.new
    van = Van.new
    expect(van.collect_fixed([bike])).to eq [bike]
  end
end
