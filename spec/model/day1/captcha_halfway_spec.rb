require "advent_of_code_2017/day1/captcha_next"

RSpec.describe AdventOfCode2017::Day1::CaptchaHalfway do
  samples = {
    "1212" => 6,
    "1221" => 0,
    "123425" => 4,
    "123123" => 12,
    "12131414" => 4,
  }

  samples.each do |input, expectation|
    it "returns #{expectation} for #{input}" do
      digits = input.chars.map(&:to_i)
      solver = AdventOfCode2017::Day1::CaptchaHalfway.new(digits)
      expect(solver.solve).to eq expectation
    end
  end
end
