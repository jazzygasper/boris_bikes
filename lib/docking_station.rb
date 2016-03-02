require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bike, :bikes
  attr_writer :bike


  def release_bike
    fail 'no bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'no docks available' if @bikes.count >= 20
    @bikes << bike
    @bike = bike
  end

end
