class Van

attr_reader :storage

def initialize
  @storage = []
end

def take(bikes)
  @storage = @storage + bikes
end

def deliver(station="all")
  if station == "all"
    @storage.pop(@storage.size)
  else
    @storage.pop(station.space_available)
  end
end

end
