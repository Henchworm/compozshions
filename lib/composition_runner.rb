require './composition'
require './text_cells'
require './dynamics_generator'
require './graphic_cells'
require './pitch_generator'

puts "Which composition would you like to play?"
opus_no = gets.chomp
composition = Composition.play(opus_no)
require'pry';binding.pry
case composition.opus_no
when 1
  require"pry";binding.pry
end
