require "advent_of_code_2017/input_fetcher.rb"
require_relative "captcha_next.rb"
require_relative "captcha_halfway.rb"

module AdventOfCode2017
  module Day1
    class Solution
      def self.run
        new.run
      end

      def run
        puts "Day 1 - Captcha"
        puts "Input: #{input[0..50]}..."
        part_one
        part_two
      end

      private

      def part_one
        puts "Part 1: next digit"
        puts CaptchaNext.new(digits).solve
      end

      def part_two
        puts "Part 2: halfway"
        puts CaptchaHalfway.new(digits).solve
      end

      def input
        @_input ||= InputFetcher.new(1).fetch
      end

      def digits
        @_digits ||= input.chars.map(&:to_i)
      end
    end
  end
end
