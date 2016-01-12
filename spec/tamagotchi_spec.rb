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
  describe("#alive") do
    it('checks if tamagotchi is alive') do
      my_tamagotchi = Tamagotchi.new("thing")
      expect(my_tamagotchi.alive?).to(eq(true))
    end
  end
  describe("#set_food_level") do
    it('checks if tamagotchi is dead with 0 food level') do
      my_tamagotchi = Tamagotchi.new("thing")
      my_tamagotchi.set_food_level(0)
      expect(my_tamagotchi.alive?).to(eq(false))
    end
  end
end
