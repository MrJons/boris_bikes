require_relative "docking_station"
require_relative "garage"
class Van

def initialize
  @broken_bikes = []
  @good_bikes = []
end

def collect(bikes)
  until bikes.empty?
  @broken_bikes << bikes.pop
  end
  @broken_bikes
end

def collect_fixed(bikes)
  until bikes.empty?
  @good_bikes << bikes.pop
  end
  @good_bikes
end



end
