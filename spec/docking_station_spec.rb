require 'docking_station'
require 'bike'

describe DockingStation do

  it "should respond to release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "should release working bikes" do
   expect(subject.release_bike.working?).to eq true
   # bike = subject.release_bike
   # expect(bike).to be_working
  end

  it "should allow bikes to be docked" do
    expect(subject).to respond_to(:dock)
  end

  it "should contain a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

 end
