require_relative "memory_location"

module AdventOfCode2017
  module Day3
    class EuclidianMemoryLocation < MemoryLocation
      attr_reader :x, :y

      def initialize(x, y)
        @x = x
        @y = y
        @address = calculate_address
      end

      private

      def rank
        @_rank ||= [x, y].map(&:abs).max
      end

      def calculate_address
        last_address_on_circle - distance_to_last_address_on_circle
      end

      def distance_to_last_address_on_circle
        full_sides * corner_to_corner_distance + distance_to_next_corner
      end

      def distance_to_next_corner
        signed_distance_to_axis + circle_rank
      end

      def full_sides
        case quarter
        when :bottom then 0
        when :left   then 1
        when :top    then 2
        when :right  then 3
        end
      end

      def signed_distance_to_axis
        case quarter
        when :bottom then -x
        when :left   then y
        when :top    then x
        when :right  then -y
        end
      end

      def circle_rank
        @_circle_rank ||=
          case quarter
          when :left, :right then x.abs
          when :bottom, :top then y.abs
          end
      end

      def quarter
        @_quarter ||=
          if x.abs > y.abs
            x > 0 ? :right : :left
          else
            y > 0 ? :top : :bottom
          end
      end
    end
  end
end
