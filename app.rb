require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")
require('pry')

get('/') do
  @actives = Tamagotchi.get_active_tamagotchi
  erb(:index)
end

post('/new') do
  name = params.fetch("new")
  if name == "clear"
    Tamagotchi.clear
  else
    tama = Tamagotchi.new(name)
  end

  erb(:create)
end

post('/eat') do
  @actives = Tamagotchi.get_active_tamagotchi

  @actives.each do |tama|
    tama.eat
  end

  erb(:index)
end

post('/sleep') do
  @actives = Tamagotchi.get_active_tamagotchi

  @actives.each do |tama|
    tama.sleep_time
  end

  erb(:index)
end

post('/play') do
  @actives = Tamagotchi.get_active_tamagotchi

  @actives.each do |tama|
    tama.play
  end

  erb(:index)
end
