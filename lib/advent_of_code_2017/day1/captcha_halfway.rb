require_relative "captcha"

module AdventOfCode2017
  module Day1
    class CaptchaHalfway < Captcha
      def initialize(digits)
        if digits.size.odd?
          raise ArgumentError.new("Input should have an even number of digits.")
        end
        super(digits, digits.size / 2)
      end
    end
  end
end
