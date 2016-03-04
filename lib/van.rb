require_relative 'bike_container'

class Van

include BikeContainer

def initialize
  @storage = []
end

# def collect(bikes)
#   @storage = @storage + bikes
# end

def deliver(station="all")
  if station == "all"
    @storage.pop(@storage.size)
  else
    @storage.pop(station.space_available)
  end
end

end
