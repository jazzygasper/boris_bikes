require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "no bikes bitches" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise "no space to dock bike" if @bikes.size == 20
    @bikes << bike
  end

  private

  def full?
    @bikes.size == 20 ? true : false
  end

end
