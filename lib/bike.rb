class Bike

def initialize
  @working = true
end

def working?
  @working
end

def report_broken
  @working = false
end

def fix
  @working = true
end

end
