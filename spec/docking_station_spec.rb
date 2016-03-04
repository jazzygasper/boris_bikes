require 'docking_station'

describe DockingStation do

  it 'get bike' do
    subject.dock double(:bike)
    expect(subject.release_bike).to be_a Bike
  end

  it { expect(double(:bike)).to be_working }
  it { is_expected.to respond_to(:dock).with(1).argument }
  # it { is_expected.to respond_to(:bike)}

  it 'docks a bike' do
    subject.dock double(:bike)
    expect(subject.bikes.size).to eq 1
  end

  # it 'shows docked bike' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bike).to eq bike
  # end

it 'raises release bike error' do
  expect { subject.release_bike }.to raise_error "no bikes bitches"
end

it 'raises dock bike error' do
  subject.capacity.times { subject.dock double(:bike)}
  expect { subject.dock double(:bike) }.to raise_error "no space to dock bike"
end

it 'creates station with capacity of 50' do
  subject.capacity = 50
  expect(subject.capacity).to eq 50
end

it 'creates station with default capacity of 20' do
  expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
end

it 'does not release broken bike' do
  bike = double(:bike)
  bike.report_broken
  subject.dock(bike)
  expect { subject.release_bike }.to raise_error "bike is broken bitches"
end

end
