require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to 'release_bike'}

  it 'get bike' do
    expect(subject.release_bike).to be_a Bike
  end

  it { expect(Bike.new).to be_working }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike)}

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'shows docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
