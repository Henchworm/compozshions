# frozen_string_literal: true

require 'composition'
RSpec.describe Composition do
  it 'is selected to be played by opus number' do
    composition1 = Composition.play(1)
    expect(composition1.opus_no).to eq(1)
  end
end
