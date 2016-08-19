require "bike"

describe "Bike" do
  it "bike instances respond to method working" do
    bike = Bike.new
    expect(bike.working).to be(true)
  end

  it "released working bikes" do
    bike = Bike.new
    expect(bike.report_broken).to be false
  end

end
