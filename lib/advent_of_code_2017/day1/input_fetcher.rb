require "faraday"

module AdventOfCode2017
  module Day1
    class InputFetcher
      INPUT_URL = "http://adventofcode.com/2017/day/1/input".freeze

      def self.fetch
        new.fetch
      end

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
  end
end
