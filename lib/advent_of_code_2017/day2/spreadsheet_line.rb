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

      private

      attr_reader :cells
    end
  end
end
