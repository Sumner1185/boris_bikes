require 'docking_station'

describe DockingStation do
  let(:subject) {DockingStation.new}
  it {is_expected.to respond_to :release_bike}

  it 'can take a capacity value as an argument' do
    expect(DockingStation.new(20)).to be_instance_of DockingStation
  end

  it 'should have a maximum capacity given to it as an argument' do
    capacity = 2
    station = DockingStation.new(capacity)
    capacity.times {station.dock(Bike.new)}
    expect {station.dock(Bike.new)}.to raise_error "No space available"
  end

  describe '#release_bike' do
    let(:bike) {Bike.new}

    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'Raises an error when no bikes availabe' do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end
    it "should not release a broken bike" do
      broken_bike = bike.report_broken
      subject.dock(broken_bike)
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end

    it 'should only release working bikes' do
      broken_bike = Bike.new
      broken_bike.report_broken
      subject.dock(bike)
      subject.dock(broken_bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#dock' do
    it {is_expected.to respond_to :dock}

    it 'raises an error when no space available' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "No space available"
    end
  end


end
