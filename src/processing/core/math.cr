module Processing
  module Core
    module Math
      def abs(n)
        n.abs
      end

      def ceil(n)
        n.ceil
      end

      def constrain(amt, low, high)
        # TODO: implement
      end

      def dist(x1,y1, x2,y2)
        # TODO: impelment
      end

      def dist(x1,y1,z1, x2,y2,z2)
        # TODO: impelment
      end

      def exp(value)
        ::Math.exp(value)
      end

      def floor(n)
        n.floor
      end

      def lerp(start : Float32, stop : Float32, amt : Float32) : Float32
        # TODO: implement
      end

      def log(n)
        ::Math.log(n)
      end

      def log10(n)
        ::Math.log10(n)
      end

      def mag(a : Float32, b : Float32) : Float32
        # TOOD: implement
      end

      def mag(a : Float32, b : Float32, c : Float32) : Float32
        # TOOD: implement
      end

      def map(value : Float32, start1 : Float32, stop1 : Float32, start2 : Float32, stop2 : Float32) : Float32
        # TOOD: implement
      end

      def max(a,b)
        ::Math.max(a,b)
      end

      def max(a,b,c)
        max(max(a,b),c)
      end

      def max(list : Array(Int)) : Int
        # TODO: implement
      end

      def max(list : Array(Float32)) : Float32
        # TODO: implement
      end

      def min(a,b)
        ::Math.min(a,b)
      end

      def min(a,b,c)
        min(min(a,b),c)
      end

      def min(list : Array(Int)) : Int
        # TODO: implement
      end

      def min(list : Array(Float32)) : Float32
        # TODO: implement
      end

      def norm(value : Float32, start : Float32, stop : Float32) : Float32
        # TODO: implement
      end

      def pow(n, e)
        n ** e
      end

      def round(n)
        n.round
      end

      def sq(n)
        n ** 2
      end

      def sqrt(n)
        ::Math.sqrt(n)
      end

    end
  end
end
