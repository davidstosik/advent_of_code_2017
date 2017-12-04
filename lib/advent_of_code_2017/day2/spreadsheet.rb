require_relative "spreadsheet_line"

module AdventOfCode2017
  module Day2
    class Spreadsheet
      def initialize(lines)
        @lines = lines
      end

      def checksum
        lines.inject(0) do |memo, line|
          memo + line.largest_difference
        end
      end

      def self.from_input(input)
        lines = input.lines.map do |line|
          SpreadsheetLine.from_input(line)
        end
        new(lines)
      end

      private

      attr_reader :lines
    end
  end
end
