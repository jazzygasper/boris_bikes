require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "no bikes bitches" if @bikes.size == 0
    @bike
    @bikes.pop
  end

  def dock(bike)
    raise "no space to dock bike" if @bikes.size == 20
    @bikes << bike

  end

end
