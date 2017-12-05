module AdventOfCode2017
  module Day4
    class Passphrase
      def initialize(string)
        @string = string
      end

      def valid_for_anagrams?
        valid? do |word|
          word.chars.sort.join
        end
      end

      def valid?(&block)
        words.uniq(&block).count == words.count
      end

      private

      attr_reader :string

      def words
        string.split
      end
    end
  end
end
