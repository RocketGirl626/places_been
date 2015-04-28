require('rspec')
require('places')

describe(Place) do
  describe("#location")
  it("it lets you enter a location") do
    test_place = Place.new("Tokyo") do
      expect(test_place.location()).to(eq("Tokyo"))
    end
  end
end
