require 'van'

describe Van do

it { is_expected.to respond_to 'take'}

it 'collects bikes' do
  subject.take [double(:bikes)]
  expect(subject.storage.size).to eq 1
end

it 'delivers bikes' do
  subject.take [double(:bikes)]
  subject.deliver
  expect(subject.storage.size).to eq 0
end

it 'only delivers the amount of bikes the station can take' do
  2.times{subject.take [double(:bikes)]}
  station = double(:station, space_available:5)
  expect(station).to receive(:space_available)
  subject.deliver(station)
end

end
