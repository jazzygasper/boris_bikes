class Van

attr_reader :storage

def initialize
  @storage = []
end

def take(bikes)
  @storage = @storage + bikes
end

def deliver
  @storage.pop(@storage.size)
end

end
