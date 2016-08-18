require_relative "bike"

class DockingStation

DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail "there is no capacity" if full?
    @bikes << bike
  end

  def release_bike
    fail "no bikes available" if station_empty?
    @bikes.pop
  end

  attr_reader :bikes
#### THIS IS WHAT THE attr_reader DOES..... ###
#def bikes
#  @bikes
#end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def station_empty?
    @bikes.empty?
  end

end
