require './lib/passenger'

describe Passenger do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  describe '#initialize' do
    it 'returns an instance of Passenger' do
      expect(@charlie).to be_a Passenger
    end

    it 'can return the name of the passenger' do
      expect(@charlie.name).to eq("Charlie")
    end

    it 'can return the age of the passenger' do
      expect(@charlie.age).to eq(18)
    end
  end

  describe '#adult?' do
    it 'returns a boolean response if the passenger is an adult' do
      expect(@charlie.adult?).to be true
    end
  end

  describe '#driver?' do
    it 'returns a boolean response if the passenger is the driver' do
      expect(@charlie.driver?).to be false
    end
  end

  describe '#drive' do
    it 'switches the passengers status to be a driver' do
      @charlie.drive
      expect(@charlie.driver?).to be true
    end
  end
end
