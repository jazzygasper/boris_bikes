require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'fails if no bikes' do
    expect { subject.release_bike }.to raise_error "no bikes available"
  end

  describe '#dock' do
    it 'does not dock bike' do
     DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
     expect { subject.dock(Bike.new) }.to raise_error "no docks available"
    end
  end

it 'it changes capacity' do
    expect(DockingStation.new(40)).to eq DockingStation
end

  it 'docks bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[0]).to eq bike
  end

  it 'releases working bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end


  it { is_expected.to respond_to(:bike) }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
