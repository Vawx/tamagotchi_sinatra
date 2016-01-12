require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#new") do
    it('creates a new tamagotchi') do
      my_tamagotchi = Tamagotchi.new("thing")
      expect(my_tamagotchi.name).to(eq("thing"))
      expect(my_tamagotchi.food).to(eq(100))
      expect(my_tamagotchi.sleep_level).to(eq(100))
    end
  end
end
