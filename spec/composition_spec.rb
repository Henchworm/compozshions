require 'composition'
RSpec.describe Composition do

  it "is initialized with an opus number" do
    composition1 = Composition.new(1)
    require'pry';binding.pry
    expect(composition1.opus_no).to eq(1)
  end
end