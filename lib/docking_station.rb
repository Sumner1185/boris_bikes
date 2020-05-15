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
    @bikes.sort_by{ |bike| bike.working? }.pop
  end

  private
  def full?
    @bikes.length == @capacity
  end

  def empty?
    number_working = 0
    @bikes.each { |bike| number_working += 1 if bike.working?  }
    number_working == 0
  end
end
