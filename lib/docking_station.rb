require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes 

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
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
    @bikes.length == @capacity
  end

  def empty?
    @bikes.empty?
  end
end
