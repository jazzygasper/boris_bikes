class Garage

  attr_reader :storage

  def initialize
    @storage = []
  end

  def collect(broken_bikes)
    @storage = @storage + broken_bikes
  end

  def fix_bikes
    @storage.each do |bike|
      bike.fix
    end
end

def load_van
  @storage.pop(@storage.size)
end

end
