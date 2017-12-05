require "advent_of_code_2017/day4/passphrase"

RSpec.describe AdventOfCode2017::Day4::Passphrase do
  describe "#valid?" do
    sample = {
      "aa bb cc dd ee" => true,
      "aa bb cc dd aa" => false,
      "aa bb cc dd aaa" => true
    }

    sample.each do |passphrase_string, expected|
      it "returns #{expected} for passphrase '#{passphrase_string}'" do
        passphrase = AdventOfCode2017::Day4::Passphrase.new(passphrase_string)

        expect(passphrase.valid?).to eq expected
      end
    end
  end
end
