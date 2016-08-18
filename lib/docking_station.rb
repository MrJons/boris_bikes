require_relative "bike"

class DockingStation

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "there is no capacity" if full?
    @bikes << bike
  end

  def release_bike
    fail "no bikes available" if @bikes.empty?
    @bikes.pop
  end

  attr_reader :bikes
#### THIS IS WHAT THE attr_reader DOES..... ###
#def bikes
#  @bikes
#end

  private

  def full?
    @bikes.count >= 20
  end

end
