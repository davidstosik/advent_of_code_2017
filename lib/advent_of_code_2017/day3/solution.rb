require_relative "memory_location"
require_relative "spiral_memory"

module AdventOfCode2017
  module Day3
    class Solution
      def self.run
        new.run
      end

      def run
        puts "Day 3 - Spiral Memory"
        part_one
        part_two
      end

      private

      INPUT = 361527
      private_constant :INPUT

      def part_one
        puts "Part 1: spiral"
        puts MemoryLocation.new(INPUT).manhattan_distance
      end

      def part_two
        puts "Part 2: stress test"
        puts SpiralMemory.new.fill_until_value_exceeds(INPUT)
      end
    end
  end
end
