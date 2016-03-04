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



end
