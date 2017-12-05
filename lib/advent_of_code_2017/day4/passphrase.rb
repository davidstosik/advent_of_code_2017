module AdventOfCode2017
  module Day4
    class Passphrase
      def initialize(string)
        @string = string
      end

      def valid?
        words.uniq.count == words.count
      end

      private

      attr_reader :string

      def words
        string.split
      end
    end
  end
end
