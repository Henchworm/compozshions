# frozen_string_literal: true
#
require './text_cells'
require './dynamics_generator'
require './graphic_cells'
require './pitch_generator'

class Composition
  include TextCells
  include GraphicCells
  include PitchGenerator
  include DynamicsGenerator

  attr_reader :opus_no

  def initialize(opus_no)
    @opus_no = opus_no
  end

  def self.play(opus_no)
    new(opus_no)
  end
end
