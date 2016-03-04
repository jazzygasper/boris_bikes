require 'garage'

describe Garage do

  describe '#collect' do
    it 'collects broken bikes' do
    subject.collect [double(:bikes)]
    expect(subject.storage.size).to eq 1
  end
end

it { is_expected.to respond_to 'fix_bikes'}

it 'tells the bike to fix itself' do
  bike = double(:bike)
  subject.collect([bike])
  expect(bike).to receive(:fix)
  subject.fix_bikes
end

it 'gives bikes to van' do
  subject.collect [double(:bikes)]
  subject.load_van
  expect(subject.storage.size).to eq 0
end

end
