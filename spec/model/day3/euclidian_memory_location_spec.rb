require "advent_of_code_2017/day3/euclidian_memory_location"

RSpec.describe AdventOfCode2017::Day3::EuclidianMemoryLocation do
  describe "#address" do
    samples = {
      1 => [0, 0],
      2 => [1, 0],
      3 => [1, 1],
      4 => [0, 1],
      5 => [-1, 1],
      6 => [-1, 0],
      7 => [-1, -1],
      8 => [0, -1],
      9 => [1, -1],
      13 => [2, 2],
      15 => [0, 2],
      16 => [-1, 2],
      21 => [-2, -2],
      25 => [2, -2]
    }

    samples.each do |expected_address, coordinates|
      it "returns #{expected_address} for coordinates #{coordinates}" do
        location = AdventOfCode2017::Day3::EuclidianMemoryLocation.new(*coordinates)
        expect(location.address).to eq expected_address
      end
    end
  end
end
