require 'docking_station'

describe DockingStation do

it { is_expected.to respond_to 'release_bike'}

it 'get bike' do
  expect(subject.release_bike).to be_a Bike
end

it 'expects the bike to be working' do
expect(Bike.new).to be_working
end

end
