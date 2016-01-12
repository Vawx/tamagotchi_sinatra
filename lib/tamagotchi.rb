class Tamagotchi

  define_method(:initialize) do |name|
    @name = name
    @food_level = 100
    @sleep_level = 100
  end

  define_method(:name) do
    return @name
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
end
