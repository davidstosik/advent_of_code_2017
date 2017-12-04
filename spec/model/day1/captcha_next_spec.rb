require "advent_of_code_2017/day1/captcha_next"

RSpec.describe AdventOfCode2017::Day1::CaptchaNext do
  samples = {
    "1122" => 3,
    "1111" => 4,
    "1234" => 0,
    "91212129" => 9,
  }

  samples.each do |input, expectation|
    it "returns #{expectation} for #{input}" do
      digits = input.chars.map(&:to_i)
      solver = AdventOfCode2017::Day1::CaptchaNext.new(digits)
      expect(solver.solve).to eq expectation
    end
  end
end
