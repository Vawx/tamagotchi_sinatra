class Tamagotchi
  @@active_tamagotchi = []

  #Initialize Tamagachi with a Name
  define_method(:initialize) do |name|
    @name = name
    @food_level = 100
    @sleep_level = 100

    @@active_tamagotchi.push(self)
  end

  #Return Tamagochi name
  define_method(:name) do
    return @name
  end

  #Set food level
  #@param : set : value to set to
  #
  define_method(:set_food_level) do |set|
    @food_level = set
  end

  define_method(:subract_food_and_sleep) do
    @food_level -= 1
    @sleep_level -= 1
  end

  define_method(:food) do
    return @food_level
  end

  define_method(:sleep_level) do
    return @sleep_level
  end

  define_method(:alive?) do
    return @food_level > 0
  end

  define_method(:eat) do
    @food_level += 3
  end

  define_method(:sleep_time) do
    @sleep_level += 3
  end

  define_method(:play) do
    @food_level -= 5
    @sleep_level -= 5
  end


  define_singleton_method(:clear) do
    @@active_tamagotchi = []
  end

  define_singleton_method(:get_active_tamagotchi) do
    return @@active_tamagotchi
  end
end
