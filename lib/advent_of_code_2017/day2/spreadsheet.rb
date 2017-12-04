module AdventOfCode2017
  module Day2
    class Spreadsheet
      def initialize(lines)
        @lines = lines
      end

      def checksum
        lines.inject(0) do |memo, line|
          memo + line.max - line.min
        end
      end

      def self.from_input(input)
        lines = input.lines.map do |line|
          line.strip.split("\t").map(&:to_i)
        end
        new(lines)
      end

      private

      attr_reader :lines
    end
  end
end
