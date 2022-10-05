require './composition'
require './text_cells'
require './dynamics_generator'
require './graphic_cells'
require './pitch_generator'

puts "Which composition would you like to play?"
opus_no = gets.chomp
composition = Composition.play(opus_no)
case composition.opus_no
when '1'
 system "clear"
 sleep(5)
  puts composition.breathe
 sleep(5)
end