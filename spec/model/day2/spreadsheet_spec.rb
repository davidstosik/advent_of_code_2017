require "advent_of_code_2017/day2/spreadsheet"

RSpec.describe AdventOfCode2017::Day2::Spreadsheet do
  describe "#checksum" do
    it "returns 18 for the sample spreadsheet" do
      spreadsheet = AdventOfCode2017::Day2::Spreadsheet.from_input <<~SPREADSHEET
        5	1	9	5
        7	5	3
        2	4	6	8
      SPREADSHEET

      expect(spreadsheet.checksum).to eq 18
    end

    it "returns 9 for the sample spreadsheet with evenly divisible values" do
      spreadsheet = AdventOfCode2017::Day2::Spreadsheet.from_input <<~SPREADSHEET
        5	9	2	8
        9	4	7	3
        3	8	6	5
      SPREADSHEET

      expect(spreadsheet.checksum(:even_division)).to eq 9
    end
  end
end
