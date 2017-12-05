require "advent_of_code_2017/input_fetcher"
require_relative "passphrase"

module AdventOfCode2017
  module Day4
    class Solution
      def self.run
        new.run
      end

      def run
        puts "Day 4 - High-Entropy Passphrases"
        puts "Input: #{input[0..50]}..."
        part_one
        part_two
      end

      private

      def part_one
        puts "Part 1: validity"
        puts part1_valid_passphrases.count
      end

      def part_two
        puts "Part 2: prevent anagrams"
        puts part2_valid_passphrases.count
      end

      def input
        @_input ||= InputFetcher.new(4).fetch
      end

      def passphrases
        input.lines.map do |line|
          AdventOfCode2017::Day4::Passphrase.new(line.strip)
        end
      end

      def part1_valid_passphrases
        passphrases.select do |passphrase|
          passphrase.valid?
        end
      end

      def part2_valid_passphrases
        passphrases.select do |passphrase|
          passphrase.valid_for_anagrams?
        end
      end
    end
  end
end
