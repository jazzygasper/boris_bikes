require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  station = DockingStation.new

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike)}

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
