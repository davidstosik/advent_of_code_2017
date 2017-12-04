module AdventOfCode2017
  module Day1
    class CaptchaNext
      def self.solve(input)
        new(input).solve
      end

      def initialize(input)
        @input = input
      end

      def solve
        digits.each_with_index.inject(0) do |memo, (digit, index)|
          if digit == digits_with_repeated_first[index + 1]
            memo + digit
          else
            memo
          end
        end
      end

      private

      attr_reader :input

      def digits_with_repeated_first
        @_digits_with_repeated_first ||= digits + [digits[0]]
      end

      def digits
        @_digits ||= input.chars.map(&:to_i)
      end
    end
  end
end
