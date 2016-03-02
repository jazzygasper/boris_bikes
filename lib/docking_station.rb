require_relative 'bike'


class DockingStation
  attr_reader :bikes
  attr_accessor :bike
  DEFAULT_CAPACITY = 20

  def initialize
   	@bike = Bike.new
    @bikes = []

  end

  def dock
     raise TypeError, "This docking station is full." if full?
  	 @bikes << bike
  end

  def release_bike
    raise TypeError, "No more bikes." if empty?
    @bikes.pop
  end

  private

  def full?
    bikes.size == DEFAULT_CAPACITY ? true : false
  end

  def empty?
    bikes.size == 0 ? true : false
  end
end

