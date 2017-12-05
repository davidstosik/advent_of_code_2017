require "advent_of_code_2017/day2/spreadsheet_line"

RSpec.describe AdventOfCode2017::Day2::SpreadsheetLine do
  describe "#largest_difference" do
    samples = {
      "5 1 9 5" => 8,
      "7 5 3" => 4,
      "2 4 6 8" => 6
    }

    samples.each do |input, expectation|
      it "returns #{expectation} for #{input}" do
        cells = input.split.map(&:to_i)
        solver = AdventOfCode2017::Day2::SpreadsheetLine.new(cells)
        expect(solver.largest_difference).to eq expectation
      end
    end
  end

  describe "#even_division" do
    samples = {
      "5 9 2 8" => 4,
      "9 4 7 3" => 3,
      "3 8 6 5" => 2
    }

    samples.each do |input, expectation|
      it "returns #{expectation} for #{input}" do
        cells = input.split.map(&:to_i)
        solver = AdventOfCode2017::Day2::SpreadsheetLine.new(cells)
        expect(solver.even_division).to eq expectation
      end
    end
  end
end
