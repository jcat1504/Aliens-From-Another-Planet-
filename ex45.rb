require './enginemap.rb'
require './characters.rb'
require './beginning.rb'
require './fishpond.rb'
require './cabin.rb'
require './treehouse.rb'
require './bridge.rb'
require './shrine.rb'
require './ending.rb'

a_map = Map.new('beginning')
a_game = Engine.new()
a_game.play()
