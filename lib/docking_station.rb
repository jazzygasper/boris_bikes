require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "no bikes bitches" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "no space to dock bike" if full?
    @bikes << bike
  end

  private

  def empty?
    @bikes.size <= 0
  end

  def full?
    @bikes.size == 20
  end

end
