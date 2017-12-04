module AdventOfCode2017
  module Day1
    class CaptchaHalfway
      def self.solve(input)
        new(input).solve
      end

      def initialize(input)
        @input = input
      end

      def solve
        digits.each_with_index.inject(0) do |memo, (digit, index)|
          if digit == repeated_digits[index + offset]
            memo + digit
          else
            memo
          end
        end
      end

      private

      attr_reader :input

      def repeated_digits
        @_repeated_digits ||= digits + digits
      end

      def offset
        digits.size / 2
      end

      def digits
        @_digits ||= input.chars.map(&:to_i)
      end
    end
  end
end
