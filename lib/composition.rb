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

  attr_reader :opus_no, :limit_pitches, :limit_dynamics

  def initialize(opus_no)
    @opus_no = opus_no
    @limit_pitches = generate_pitches
    @limit_dynamics = generate_dynamics
  end

  def generate_dynamics
    selected = []
    rand(1..7).times do
      selected << dynamics.sample
    end
    selected
  end

  def generate_pitches
    selected = []
    rand(1..11).times do
      selected << pitches.values.sample
    end
    selected
  end

  def self.play(opus_no)
    new(opus_no)
  end
end
