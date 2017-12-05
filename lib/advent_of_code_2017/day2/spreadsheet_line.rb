module AdventOfCode2017
  module Day2
    class SpreadsheetLine
      def initialize(cells)
        @cells = cells
      end

      def self.from_input(input_line)
        new(input_line.strip.split("\t").map(&:to_i))
      end

      def largest_difference
        cells.max - cells.min
      end

      def even_division
        divisor, dividend = evenly_divisible_values
        dividend / divisor
      end

      private

      attr_reader :cells

      def sorted_pairs
        @_sorted_pairs ||= cells.combination(2).map(&:sort)
      end

      def evenly_divisible_values
        sorted_pairs.find do |a, b|
          b % a == 0
        end
      end
    end
  end
end
