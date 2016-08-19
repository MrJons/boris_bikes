require_relative "bike"
require_relative "van"
class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def dock(bike)
    fail "there is no capacity" if full?
    if bike.working?
      @bikes << bike
    else
      @broken_bikes << bike
    end
  end

  def release_bike
    fail "no bikes available" if station_empty?
    @bikes.pop
  end


  attr_reader :capacity
#### THIS IS WHAT THE attr_reader DOES..... ###
#def bikes
#  @bikes
#end
attr_reader :bikes, :broken_bikes

  private


  def full?
    bikes.count >= @capacity
  end

  def station_empty?
    bikes.empty?
  end

end
