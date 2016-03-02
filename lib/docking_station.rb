require_relative 'bike'

class DockingStation
  attr_reader :station

  def initialize
    @station = []
  end

  def dock
     @station << Bike.new
  end

  # def dock_status
  #   @station.empty?
  # end

  def release_bike
    raise TypeError, "No more bikes." if @station.empty? == true
  end

  def bike
    Bike.new
  end

end