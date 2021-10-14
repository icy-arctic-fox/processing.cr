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
        min(max(low, amt), high)
      end

      def dist(x1, y1, x2, y2)
        x = x2 - x1
        y = y2 - y1
        sqrt(x * x + y * y)
      end

      def dist(x1, y1, z1, x2, y2, z2)
        x = x2 - x1
        y = y2 - y1
        z = z2 - z1
        sqrt(x * x + y * y + z * z)
      end

      def exp(value)
        ::Math.exp(value)
      end

      def floor(n)
        n.floor
      end

      def lerp(start : Float, stop : Float, amt : Float) : Float
        start * (1.0 - amt) + stop * amt
      end

      def log(n)
        ::Math.log(n)
      end

      def log10(n)
        ::Math.log10(n)
      end

      def mag(a : Float, b : Float) : Float
        sqrt(a * a + b * b)
      end

      def mag(a : Float, b : Float, c : Float) : Float
        sqrt(a * a + b * b + c * c)
      end

      def map(value : Float, start1 : Float, stop1 : Float, start2 : Float, stop2 : Float) : Float
        lerp(start2, stop2, norm(value, start1, stop1))
      end

      def max(a, b)
        ::Math.max(a, b)
      end

      def max(a, b, c)
        max(max(a, b), c)
      end

      def max(list : Array(Int)) : Int
        list.max
      end

      def max(list : Array(Float)) : Float
        list.max
      end

      def min(a, b)
        ::Math.min(a, b)
      end

      def min(a, b, c)
        min(min(a, b), c)
      end

      def min(list : Array(Int)) : Int
        list.min
      end

      def min(list : Array(Float)) : Float
        list.min
      end

      def norm(value : Float, start : Float, stop : Float) : Float
        (value - start) / (stop - start)
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

      def atan2(x, y)
        ::Math.atan2(x, y)
      end

      def atan(value)
        ::Math.atan(value)
      end

      def cos(angle)
        ::Math.cos(angle)
      end

      def degrees(radians)
        radians / ::Math::PI * 180
      end

      def radians(degrees)
        degrees / 180 * ::Math::PI
      end

      def sin(angle)
        ::Math.sin(angle)
      end

      def tan(angle)
        ::Math.tan(angle)
      end

      def noise_detail(lod : Int)
        not_implemented! # TODO
      end

      def noise_detail(lod : Int, falloff : Float)
        not_implemented! # TODO
      end

      def noise_seed(seed : Int)
        not_implemented! # TODO
      end

      def noise(x : Float) : Float
        not_implemented! # TODO
      end

      def noise(x : Float, y : Float) : Float
        not_implemented! # TODO
      end

      def noise(x : Float, y : Float, z : Float) : Float
        not_implemented! # TODO
      end

      def random_gaussian : Float
        not_implemented! # TODO
      end

      def random_seed(seed : Int)
        not_implemented! # TODO
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
