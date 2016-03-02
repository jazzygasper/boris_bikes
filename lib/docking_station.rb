require_relative 'bike'


class DockingStation
  attr_reader :bikes

  attr_accessor :bike

  def initialize
   	@bike = Bike.new
    @bikes = []
  end

  def dock
     
     raise TypeError, "This docking station is full." if @bikes.length == 20
  	 @bikes << bike
  end

  # def dock_status
  #   @station.empty?
  # end

  def release_bike
    raise TypeError, "No more bikes." if @bikes.empty? == true
    @bikes.pop
  end

  # def bike
  #   Bike.new
  # end

end

