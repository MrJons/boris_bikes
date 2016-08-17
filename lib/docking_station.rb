require_relative "bike"

class DockingStation

  def dock(bike)
    fail "there is no capacity" unless @bike == nil
    @bike = bike
  end

  def release_bike
    fail "no bikes available" unless @bike
    @bike
  end

attr_reader :bike

end
