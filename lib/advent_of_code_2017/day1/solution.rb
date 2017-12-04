require_relative "input_fetcher.rb"
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
        puts CaptchaNext.solve(input)
      end

      def part_two
        puts "Part 2: halfway"
        puts CaptchaHalfway.solve(input)
      end

      def input
        @_input ||= InputFetcher.new.fetch
      end
    end
  end
end
