require 'bike_container'

shared_examples_for "a bike_container" do
  let(:bike_container) { described_class.new }

describe "#collet" do
  it 'collects bikes' do
    bike_container.collect [double(:bikes)]
    expect(bike_container.storage.size).to eq 1
  end
end

end
