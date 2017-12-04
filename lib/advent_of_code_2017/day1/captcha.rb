module AdventOfCode2017
  module Day1
    class Captcha
      def initialize(digits, offset)
        @digits = digits
        @offset = offset % digits.size
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

      attr_reader :digits, :offset

      def repeated_digits
        @_repeated_digits ||= digits * 2
      end
    end
  end
end
