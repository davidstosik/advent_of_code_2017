require "faraday"

module AdventOfCode2017
  module Day1
    class InputFetcher
      INPUT_URL = "http://adventofcode.com/2017/day/1/input".freeze

      def fetch
        @_fetch ||= send_request.body.strip
      end

      private

      def uri
        @_uri ||= URI.parse(INPUT_URL)
      end

      def cookie
        {
          session: ENV["SESSION_COOKIE"]
        }
      end

      def send_request
        connection.get do |request|
          request.url(uri.path)
          request.headers["Cookie"] = URI.encode_www_form(cookie)
          request.headers["Cache-Control"] = "no-cache"
        end
      end

      def connection
        Faraday.new(url: uri) do |faraday|
          faraday.adapter(Faraday.default_adapter)
        end
      end
    end

    class Captcha
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
