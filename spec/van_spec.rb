require 'van'

describe Van do

it { is_expected.to respond_to 'collect'}

it 'collects bikes' do
  subject.collect [double(:bikes)]
  expect(subject.storage.size).to eq 1
end

it_behaves_like "a bike_container"

it 'delivers bikes' do
  subject.collect [double(:bikes)]
  subject.deliver
  expect(subject.storage.size).to eq 0
end

it 'only delivers the amount of bikes the station can collect' do
  2.times{subject.collect [double(:bikes)]}
  station = double(:station, space_available:5)
  expect(station).to receive(:space_available)
  subject.deliver(station)
end

end
