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

  describe "#neighbours" do
    it "returns 8 EuclidianMemoryLocation objects" do
      location = AdventOfCode2017::Day3::MemoryLocation.new(1)
      neighbours = location.neighbours

      expect(neighbours.count).to eq 8
      neighbours.each do |neighbour|
        expect(neighbour).to be_a(AdventOfCode2017::Day3::EuclidianMemoryLocation)
      end
    end

    it "returns all neighbours" do
      location = AdventOfCode2017::Day3::MemoryLocation.new(1)
      coordinate_pairs = location.neighbours.map do |neighbour|
        [neighbour.x, neighbour.y]
      end

      expect(coordinate_pairs.sort).to eq [
        [-1, -1],
        [-1, 0],
        [-1, 1],
        [0, -1],
        [0, 1],
        [1, -1],
        [1, 0],
        [1, 1]
      ]
    end
  end

  describe "#euclidian_coordinates" do
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

    samples.each do |address, expected_coordinates|
      it "returns #{expected_coordinates} for address #{address}" do
        location = AdventOfCode2017::Day3::MemoryLocation.new(address)
        expect(location.send(:euclidian_coordinates)).to eq expected_coordinates
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
