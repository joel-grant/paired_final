require './lib/vehicle'
require './lib/passenger'

describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
  end
  
end
