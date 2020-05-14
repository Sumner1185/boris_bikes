require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bikes)
    fail "No space available" if full?
    @bikes.push(bikes)
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  private
  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end
end
