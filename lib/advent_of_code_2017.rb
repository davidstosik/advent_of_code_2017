require "dotenv/load"

require "advent_of_code_2017/version"

require "advent_of_code_2017/day1/solution"
require "advent_of_code_2017/day2/solution"
require "advent_of_code_2017/day3/solution"

module AdventOfCode2017
  def self.run
    Day1::Solution.run
    Day2::Solution.run
    Day3::Solution.run
  end
end
