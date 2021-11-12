class Vehicle
  attr_reader :year, :make, :model, :passengers, :speeding

  def initialize(year, make, model)
    @year       = year
    @make       = make
    @model      = model
    @passengers = []
    @speeding   = false
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    require 'pry'; binding.pry
    @passengers.count { |passenger| passenger.adult? }
  end
end
