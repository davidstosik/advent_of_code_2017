require "advent_of_code_2017/day3/memory_location"

RSpec.describe AdventOfCode2017::Day3::MemoryLocation do
  describe "#manhattan_distance" do
    samples = {
      1 => 0,
      12 => 3,
      23 => 2,
      1024 => 31
    }

    samples.each do |address, expected_distance|
      it "returns #{expected_distance} for address #{address}" do
        location = AdventOfCode2017::Day3::MemoryLocation.new(address)
        expect(location.manhattan_distance).to eq expected_distance
      end
    end
  end

  describe "#circle_rank" do
    samples = {
      1 => 0,
      2 => 1,
      5 => 1,
      9 => 1,
      10 => 2,
      16 => 2,
      25 => 2,
      26 => 3,
      49 => 3
    }

    samples.each do |address, expected_rank|
      it "returns #{expected_rank} for address #{address}" do
        location = AdventOfCode2017::Day3::MemoryLocation.new(address)
        expect(location.send(:circle_rank)).to eq expected_rank
      end
    end
  end

  describe "#distance_to_axis" do
    samples = {
      1 => 0,
      2 => 0,
      3 => 1,
      8 => 0,
      9 => 1,
      10 => 1,
      13 => 2,
      15 => 0,
      16 => 1,
      17 => 2,
      23 => 0,
      24 => 1,
      25 => 2
    }

    samples.each do |address, expected_distance|
      it "returns #{expected_distance} for address #{address}" do
        location = AdventOfCode2017::Day3::MemoryLocation.new(address)
        expect(location.send(:distance_to_axis)).to eq expected_distance
      end
    end
  end
end
