require "advent_of_code_2017/input_fetcher"
require_relative "spreadsheet"

module AdventOfCode2017
  module Day2
    class Solution
      def self.run
        new.run
      end

      def run
        puts "Day 2 - Corruption Checksum"
        puts "Input: #{input[0..50]}..."
        part_one
        part_two
      end

      private

      def part_one
        puts "Part 1: checksum"
        puts Spreadsheet.from_input(input).checksum(:largest_difference)
      end

      def part_two
        puts "Part 2: evenly divisible values"
        puts Spreadsheet.from_input(input).checksum(:even_division)
      end

      def input
        @_input ||= InputFetcher.new(2).fetch
      end
    end
  end
end
