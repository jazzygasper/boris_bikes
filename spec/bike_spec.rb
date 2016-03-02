require 'bike'

describe Bike do
  it {is_expected.to respond_to :working?}
  it { expect(subject.working?).to be true }

  it 'is reported as broken' do
    subject.broken = true
    expect(subject.working?).to be false
  end
end
