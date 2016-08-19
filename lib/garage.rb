class Garage

  def initialize
    @broken_bikes = []
    @good_bikes = []
  end

  def repair_bike(bikes)
    bikes.each {|x| x.fix_bike}
  end
end
