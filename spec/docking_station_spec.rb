require 'docking_station'
require 'bike'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bikes = Bike.new
      subject.dock(bikes)
      expect(subject.release_bike).to eq bikes
    end
    it 'Raises an error when no bikes availabe' do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#dock' do
    it {is_expected.to respond_to :dock}

    it 'raises an error when no space available' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "No space available"
    end
  end

end
