require './lib/park'
require './lib/vehicle'
require './lib/passenger'

describe Park do
  before(:each) do
    @park = Park.new("Roxborough Park", 7)
    @vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    @vehicle_2 = Vehicle.new("2008", "Toyota", "FJ Cruiser")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @joel = Passenger.new({"name" => "Joel", "age" => 34})
  end

  describe '#initialize' do
    it 'creates and returns an instance of Park' do
      expect(@park).to be_a Park
    end

    it 'returns the name of the park' do
      expect(@park.name).to eq("Roxborough Park")
    end

    it 'returns the price of admission' do
      expect(@park.price).to eq(7)
    end

    it 'returns the list of vehicles in the park' do
      expect(@park.vehicles).to eq([])
    end
  end

  describe '#admit' do
    it 'adds a new vehicle to the list of vehicles admitted to the park' do
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@jude)
      @vehicle_2.add_passenger(@taylor)
      @vehicle_2.add_passenger(@joel)
      @park.admit(@vehicle_1)
      @park.admit(@vehicle_2)
      expect(@park.vehicles).to eq([@vehicle_1, @vehicle_2])
    end
  end

  describe '#list_passengers' do
    it 'can list all the passengers that enter the park' do
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@jude)
      @vehicle_2.add_passenger(@taylor)
      @vehicle_2.add_passenger(@joel)
      @park.admit(@vehicle_1)
      @park.admit(@vehicle_2)
      expect(@park.list_passengers).to eq([@charlie, @jude, @taylor, @joel])
    end
  end

  describe '#revenue' do
    it 'can return the total revenue based on passengers in the park' do
      @vehicle_1.add_passenger(@charlie)
      @vehicle_1.add_passenger(@jude)
      @vehicle_2.add_passenger(@taylor)
      @vehicle_2.add_passenger(@joel)
      @park.admit(@vehicle_1)
      @park.admit(@vehicle_2)
      expect(@park.revenue).to eq(21)
    end
  end
end
