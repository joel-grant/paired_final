class Park
  attr_reader :name, :price, :vehicles

  def initialize(name, price)
    @name = name
    @price = price
    @vehicles = []
  end

  def admit(vehicle)
    @vehicles << vehicle
  end

  def list_passengers
    passengers = @vehicles.flat_map { |vehicle| vehicle.passengers }
  end

  def revenue
    num_adults = list_passengers.count { |passenger| passenger.adult? }
    num_adults * @price
  end
end
