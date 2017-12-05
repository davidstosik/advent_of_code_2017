module AdventOfCode2017
  module Day3
    class MemoryLocation
      # In the spiral described:
      #
      # I. On the circle of rank N, the distance separating 2 corners is 2*N
      # - Proof for rank 0 (the location of address 1):
      # 2*0 = 0 (address 1 is all corners => distance is 0)
      # - Proof for rank 1 (addresses 2 to 9):
      # 2*1 = 1 (5-3 = 2; 7-5 = 2; 9-7 = 2)
      # - Proof for rank N+1:
      # 2*(N+1) = 2*N + 2 (when going up one rank, the distance augments by two units: one on each side)
      #
      # II. The last number of the circle of rank N is (2*N+1)^2.
      # - Proof for rank 0 (the location of address 1):
      # (2*0+1)^2 = 1 (1 is indeed the last - and only - number in the circle of rank 0)
      # - Proof for rank 1 (addresses 2 to 9):
      # (2*1+1)^2 = 9 (9 is indeed the last number in the circle of rank 1)
      # - Proof for N+1:
      # (2*(N+1)+1)^2 = 4*N^2+9+12*N = 4*N^2+4*N+1 + 8*N+8 = (2*N+1)^2 + 4*2*(N+1)
      # (2*N+1)^2 is the last number in the circle of rank N, and 4*2*(N+1) is
      # the distance to run along the whole circle of rank N+1 (4 times the
      # distance separating two corners).

      def initialize(address)
        @address = address
      end

      def manhattan_distance
        circle_rank + distance_to_axis
        # or euclidian_coordinates.map(&:abs).sum
      end

      def euclidian_coordinates
        return [0, 0] if address == 1

        case distance_to_last_address_on_circle / corner_to_corner_distance
        when 0 # bottom
          [ -signed_distance_to_axis, -circle_rank ]
        when 1 # left
          [ -circle_rank, signed_distance_to_axis ]
        when 2 # top
          [ signed_distance_to_axis, circle_rank ]
        when 3 # right
          [ circle_rank, -signed_distance_to_axis ]
        end
      end

      private

      attr_reader :address

      # 1 => 0
      # 2..9 => 1
      # 10..25 => 2
      def circle_rank
        Math.sqrt(address).ceil / 2
      end

      def last_address_on_circle
        (2*circle_rank + 1)**2
      end

      def distance_to_last_address_on_circle
        last_address_on_circle - address
      end

      def corner_to_corner_distance
        2*circle_rank
      end

      def distance_to_next_corner
        if corner_to_corner_distance == 0
          0
        else
          distance_to_last_address_on_circle % corner_to_corner_distance
        end
      end

      def signed_distance_to_axis
        distance_to_next_corner - circle_rank
      end

      def distance_to_axis
        signed_distance_to_axis.abs
      end
    end
  end
end
