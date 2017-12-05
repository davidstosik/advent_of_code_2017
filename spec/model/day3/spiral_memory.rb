require "advent_of_code_2017/day3/spiral_memory"

RSpec.describe AdventOfCode2017::Day3::SpiralMemory do
  describe "#fill_until_value_exceeds" do
    it "fills the 23 first addresses with the values in the example" do
      memory = AdventOfCode2017::Day3::SpiralMemory.new

      memory.fill_until_value_exceeds(748)

      expect(memory.current_address).to eq 23
      expect(memory.send(:storage)).to eq [
        nil, 1, 1, 2, 4, 5, 10, 11, 23, 25, 26, 54, 57, 59,
        122, 133, 142, 147, 304, 330, 351, 362, 747, 806
      ]
    end

    it "returns the first value written that is larger than the input" do
      memory = AdventOfCode2017::Day3::SpiralMemory.new

      expect(memory.fill_until_value_exceeds(1)).to eq 2
      expect(memory.fill_until_value_exceeds(355)).to eq 362
      expect(memory.fill_until_value_exceeds(747)).to eq 806
    end
  end
end
