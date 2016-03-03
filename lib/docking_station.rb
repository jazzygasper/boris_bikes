require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise "no bikes bitches" unless @bike
    @bike
  end

  def dock(bike)
    raise "no space to dock bike" if @bike
    @bike = bike
  end

end
