require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail "No space available" if full?
    sort_bike(bike)
  end

  def release_bike
    fail "No bikes available" if empty?
    @working_bikes.pop
  end

  private
  def sort_bike(bike)
    bike.working? ? @working_bikes.push(bike) : @broken_bikes.push(bike)
  end
  def full?
    (@working_bikes + @broken_bikes).length == @capacity
  end

  def empty?
    @working_bikes.empty?
  end
end
