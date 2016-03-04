require_relative 'bike_container'

require_relative 'bike'

class DockingStation

  include BikeContainer
  
  attr_accessor :capacity

DEFAULT_CAPACITY = 20

  def initialize
    @storage = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    raise "no bikes bitches" if empty?
    raise "bike is broken bitches" if storage.last.working? == false
    storage.pop
  end

  def dock(bike)
    raise "no space to dock bike" if full?
    storage << bike
  end

  # def collect(fixed_bikes)
  #   @bikes = @bikes + fixed_bikes
  # end

  def space_available
    @capacity - @storage.size
  end

  private

  def empty?
    storage.size <= 0
  end

  def full?
    storage.size == capacity
  end

end
