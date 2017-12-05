require_relative "memory_location"

module AdventOfCode2017
  module Day3
    class SpiralMemory
      attr_reader :current_address

      def initialize
        @storage = [nil, 1]
        @current_address = 1
      end

      def fill_until_value_exceeds(limit)
        fill_next while fetch_current <= limit
        fetch_current
      end

      private

      attr_reader :storage

      def fetch_current
        fetch(current_address)
      end

      def fetch(address)
        storage.fetch(address, 0)
      end

      def set_current(value)
        storage[current_address] = value
      end

      def move_next
        @current_address += 1
      end

      def fill_next
        move_next
        set_current(current_neighbour_sum)
      end

      def current_memory_location
        MemoryLocation.new(current_address)
      end

      def current_neighbour_addresses
        current_memory_location.neighbours.map(&:address)
      end

      def current_neighbour_sum
        current_neighbour_addresses.inject(0) do |memo, address|
          memo + fetch(address)
        end
      end
    end
  end
end
