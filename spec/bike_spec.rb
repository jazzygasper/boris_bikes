require 'bike'

describe Bike do

it { is_expected.to respond_to 'working?'}

it 'reports broken bike' do
    expect(subject.report_broken).to eq false
end

it 'should fix itself' do
  subject.fix
  expect(subject).to be_working
end

end
