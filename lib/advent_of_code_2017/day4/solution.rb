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
        puts valid_passphrases.count
      end

      def part_two
        puts "Part 2: ???"
        # TODO
      end

      def input
        @_input ||= InputFetcher.new(4).fetch
      end

      def passphrases
        input.lines.map(&:strip)
      end

      def valid_passphrases
        passphrases.select do |passphrase|
          AdventOfCode2017::Day4::Passphrase.new(passphrase).valid?
        end
      end
    end
  end
end
