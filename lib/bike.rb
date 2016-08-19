require_relative 'docking_station'

class Bike

  def working?
    @working
  end

  def initialize
    @working = true
  end

  def report_broken
    @working = false
  end

end
