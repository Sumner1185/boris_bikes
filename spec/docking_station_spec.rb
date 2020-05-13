require 'docking_station'
require 'bike'

describe DockingStation do

  it "should respond to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'Raises an error' do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end

  end

  it 'should allow bikes to be docked' do
    expect(subject).to respond_to(:dock)
  end

 end
