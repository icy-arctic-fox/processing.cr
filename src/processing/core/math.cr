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

      def lerp(start : Float, stop : Float, amt : Float) : Float
        # TODO: implement
      end

      def log(n)
        ::Math.log(n)
      end

      def log10(n)
        ::Math.log10(n)
      end

      def mag(a : Float, b : Float) : Float
        # TOOD: implement
      end

      def mag(a : Float, b : Float, c : Float) : Float
        # TOOD: implement
      end

      def map(value : Float, start1 : Float, stop1 : Float, start2 : Float, stop2 : Float) : Float
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

      def max(list : Array(Float)) : Float
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

      def min(list : Array(Float)) : Float
        # TODO: implement
      end

      def norm(value : Float, start : Float, stop : Float) : Float
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

      def acos(value)
        ::Math.acos(value)
      end

      def asin(value)
        ::Math.asin(value)
      end

      def atan2(x,y)
        ::Math.atan2(x,y)
      end

      def atan(value)
        ::Math.atan(value)
      end

      def cos(angle)
        ::Math.cos(angle)
      end

      def degress(radians)
        # TODO: implement
      end

      def radians(degrees)
        # TODO: implement
      end

      def sin(angle)
        ::Math.sin(angle)
      end

      def tan(angle)
        ::Math.tan(angle)
      end

      def noise_detail(lod : Int)
        # TODO: implement
      end

      def noise_detail(lod : Int, falloff : Float)
        # TODO: implement
      end

      def noise_seed(seed : Int)
        # TODO: implement
      end

      def noise(x : Float) : Float
        # TODO: implement
      end

      def noise(x : Float, y : Float) : Float
        # TODO: implement
      end

      def noise(x : Float, y : Float, z : Float) : Float
        # TODO: implement
      end

      def random_gaussian : Float
        # TODO: implement
      end

      def random_seed(seed : Int)
        # TODO: implement
      end

      def random(high : Float) : Float
        rand(high)
      end

      def random(low : Float, high : Float) : Float
        rand(low..high)
      end

    end
  end
end
