  require 'docking_station'


describe DockingStation do
  # it {is_expected.to respond_to :release_bike}
  # it {is_expected.to respond_to(:dock)}
  it {is_expected.to respond_to :dock}
  it {is_expected.to respond_to :bike}

  it 'expects instance of bike class' do
    subject = DockingStation.new
    expect(subject.bike).to be_a Bike
  end

  it 'returns a true if the bike is working' do
    bike = subject.bike
  expect(bike.working?).to be true
  end

  it 'dock the bike' do
  expect(subject.dock.length).to eq 1 # may be issue depdending on how many bikes a station can hold.
  end

  it 'returns a TypeError when dock_status is empty' do
    expect { subject.release_bike }.to raise_error{ |error| error.should be_a (TypeError) }
  end
end
