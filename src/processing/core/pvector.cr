module Processing
  module Core
    class PVector
      property x : Float32

      property y : Float32

      property z : Float32

      def initialize()
        @x = 0
        @y = 0
        @z = 0
      end

      def initialize(@x, @y, @z = 0)
      end

      def self.random_2d
        not_implemented!
      end

      def self.random_2d(parent)
        not_implemented!
      end

      def self.random_3d
        not_implemented!
      end

      def self.random_3d(parent)
        not_implemented!
      end

      def self.from_angle(angle)
        not_implemented!
      end

      def copy
        dup
      end

      def set(x, y, z = 0)
        @x = x
        @y = y
        @z = z
        self
      end

      def set(v)
        @x = v.x
        @y = v.y
        @z = v.z
        self
      end

      def set(source : Indexable(Float))
        if source.size >= 2
          @x = source[0]
          @y = source[1]
        end

        if source.size > 2
          @z = source[2]
        else
          @z = 0
        end

        self
      end

      def mag
        not_implemented!
      end

      def mag_sq
        not_implemented!
      end

      def add(v)
        not_implemented!
      end

      def add(x, y, z = 0)
        not_implemented!
      end

      def self.add(v1, v2)
        not_implemented!
      end

      def self.add(v1, v2, target)
        not_implemented!
      end

      def +(v)
        not_implemented!
      end

      def sub(v)
        not_implemented!
      end

      def sub(x, y, z = 0)
        not_implemented!
      end

      def self.sub(v1, v2)
        not_implemented!
      end

      def self.sub(v1, v2, target)
        not_implemented!
      end

      def mult(n)
        not_implemented!
      end

      def self.mult(v, n)
        not_implemented!
      end

      def self.mult(v, n, target)
        not_implemented!
      end

      def *(n)
        not_implemented!
      end

      def div(n)
        not_implemented!
      end

      def self.div(v, n)
        not_implemented!
      end

      def self.div(v, n, target)
        not_implemented!
      end

      def /(n)
        not_implemented!
      end

      def dist(v)
        not_implemented!
      end

      def self.dist(v1, v2)
        not_implemented!
      end

      def dot(v)
        not_implemented!
      end

      def dot(x, y, z)
        not_implemented!
      end

      def self.dot(v1, v2)
        not_implemented!
      end

      def cross(v)
        not_implemented!
      end

      def cross(v, target)
        not_implemented!
      end

      def self.cross(v1, v2, target)
        not_implemented!
      end

      def normalize
        not_implemented!
      end

      def normalize(target)
        not_implemented!
      end

      def limit(max)
        not_implemented!
      end

      def set_mag(len)
        not_implemented!
      end

      def set_mag(target, len)
        not_implemented!
      end

      def heading
        not_implemented!
      end

      def rotate(theta)
        not_implemented!
      end

      def lerp(v, amt)
        not_implemented!
      end

      def lerp(x, y, z, amt)
        not_implemented!
      end

      def self.lerp(v1, v2, amt)
        not_implemented!
      end

      def self.angle_between(v1, v2)
        not_implemented!
      end

      def array
        [@x, @y, @z]
      end
    end
  end
end
