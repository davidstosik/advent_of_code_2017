require_relative "captcha"

module AdventOfCode2017
  module Day1
    class CaptchaNext < Captcha
      def initialize(digits)
        super(digits, 1)
      end
    end
  end
end
