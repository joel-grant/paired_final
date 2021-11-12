require './lib/vehicle'
require './lib/passenger'

describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe '#initialize' do
    it 'returns an instance of Vehicle' do
      expect(@vehicle).to be_a Vehicle
    end

    it 'returns the year of the vehicle' do
      expect(@vehicle.year).to eq("2001")
    end

    it 'returns the make of the vehicle' do
      expect(@vehicle.make).to eq("Honda")
    end

    it 'returns the model of the vehicle' do
      expect(@vehicle.model).to eq("Civic")
    end

    it 'returns the list of passengers for the vehicle' do
      expect(@vehicle.passengers).to eq([])
    end
  end

  describe '#speeding?' do
    it 'returns whether a car is speeding' do
      expect(@vehicle.speeding?).to be false
    end
  end

  describe '#speed' do
    it 'sets the speeding variable to true' do
      @vehicle.speed
      expect(@vehicle.speeding?).to be true
    end
  end

  describe '#add_passenger' do
    it 'adds passengers to the car object' do
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end
  end

  describe '#num_adults' do
    it 'returns an integer' do
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      expect(@vehicle.num_adults).to be_a Integer
    end

    it 'returns the quantity of adult passengers' do
      @vehicle.add_passenger(@charlie)
      @vehicle.add_passenger(@jude)
      @vehicle.add_passenger(@taylor)
      expect(@vehicle.num_adults).to eq(2)
    end
  end


end
