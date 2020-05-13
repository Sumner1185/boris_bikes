require_relative 'bike'

class DockingStation

  attr_reader :bike

  def dock(bike)
    fail "Bike already docked" if @bike
    @bike = bike
  end

  def release_bike
    fail "No bikes available" unless @bike
    @bike
  end

end
