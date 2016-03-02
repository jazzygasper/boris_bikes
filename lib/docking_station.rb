require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail 'no bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'no docks available' unless @full == true
    @bike = bike
  end

  def full?
  @full = true
  end
end
