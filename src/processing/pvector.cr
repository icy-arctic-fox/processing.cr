module Processing
  class PVector
    property x : Float32

    property y : Float32

    property z : Float32

    def initialize
      @x = 0
      @y = 0
      @z = 0
    end

    def initialize(@x : Float32, @y : Float32, @z : Float32 = 0)
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

    def copy : self
      dup
    end

    def set(x : Float32, y : Float32, z : Float32 = 0) : self
      @x = x
      @y = y
      @z = z
      self
    end

    def set(v) : self
      @x = v.x.to_f32
      @y = v.y.to_f32
      @z = v.z.to_f32
      self
    end

    def set(source : Indexable(Float)) : self
      if source.size >= 2
        @x = source[0].to_f32
        @y = source[1].to_f32
      end

      if source.size > 2
        @z = source[2].to_f32
      else
        @z = 0
      end

      self
    end

    def mag
      Math.sqrt(mag_sq)
    end

    def mag_sq
      @x * @x + @y * @y + @z * @z
    end

    def add(v) : self
      @x += v.x
      @y += v.y
      @z += v.z
      self
    end

    def add(x : Float32, y : Float32) : self
      @x += x
      @y += y
      self
    end

    def add(x : Float32, y : Float32, z : Float32) : self
      @x += x
      @y += y
      @z += z
      self
    end

    def self.add(v1, v2, target) : self
      x = v1.x + v2.x
      y = v1.y + v2.y
      z = v1.z + v2.z
      target.set(x, y, z)
    end

    def self.add(v1, v2, target : Nil = nil) : self
      x = v1.x + v2.x
      y = v1.y + v2.y
      z = v1.z + v2.z
      new(x, y, z)
    end

    def +(v) : self
      x = @x + v.x
      y = @y + v.y
      z = @z + v.z
      self.class.new(x, y, z)
    end

    def sub(v) : self
      @x -= v.x
      @y -= v.y
      @z -= v.z
      self
    end

    def sub(x : Float32, y : Float32) : self
      @x -= x
      @y -= y
      self
    end

    def sub(x : Float32, y : Float32, z : Float32) : self
      @x -= x
      @y -= y
      @z -= z
      self
    end

    def self.sub(v1, v2, target) : self
      x = v1.x - v2.x
      y = v1.y - v2.y
      z = v1.z - v2.z
      target.set(x, y, z)
    end

    def self.sub(v1, v2, target : Nil = nil) : self
      x = v1.x - v2.x
      y = v1.y - v2.y
      z = v1.z - v2.z
      new(x, y, z)
    end

    def -(v) : self
      x = @x - v.x
      y = @y - v.y
      z = @z - v.z
      self.class.new(x, y, z)
    end

    def mult(n : Float32) : self
      @x *= n
      @y *= n
      @z *= n
      self
    end

    def self.mult(v, n : Float32, target) : self
      x = v.x * n
      y = v.y * n
      z = v.z * n
      target.set(x, y, z)
    end

    def self.mult(v, n : Float32, target : Nil = nil) : self
      x = v.x * n
      y = v.y * n
      z = v.z * n
      new(x, y, z)
    end

    def *(n : Float32) : self
      x = @x * n
      y = @y * n
      z = @z * n
      self.class.new(x, y, z)
    end

    def div(n : Float32) : self
      @x /= n
      @y /= n
      @z /= n
      self
    end

    def self.div(v, n : Float32, target) : self
      x = v.x / n
      y = v.y / n
      z = v.z / n
      target.set(x, y, z)
    end

    def self.div(v, n : Float32, target : Nil = nil) : self
      x = v.x / n
      y = v.y / n
      z = v.z / n
      new(x, y, z)
    end

    def /(n : Float32) : self
      x = @x / n
      y = @y / n
      z = @z / n
      self.class.new(x, y, z)
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

    def dot(x : Float32, y : Float32, z : Float32)
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

    def lerp(x : Float32, y : Float32, z : Float32, amt)
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

    def to_a
      [@x, @y, @z]
    end
  end
end
