require_relative 'bike'

class DockingStation

  def initialize(capacity=20)
    @capacity = capacity
    @bikes = []
  end

  attr_reader :bike, :bikes, :capacity
  attr_writer :bike

DEFAULT_CAPACITY = 20

  def release_bike
    fail 'no bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'no docks available' if full?
    @bikes << bike
    @bike = bike
  end

private

  def full?
     @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
