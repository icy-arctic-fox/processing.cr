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

    def_equals_and_hash @x, @y, @z

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
      self.class.dist(self, v)
    end

    def self.dist(v1, v2)
      x = v2.x - v1.x
      y = v2.y - v1.y
      z = v2.z - v1.z
      Math.sqrt(x * x + y * y + z * z)
    end

    def dot(v)
      self.class.dot(self, v)
    end

    def dot(x : Float32, y : Float32, z : Float32)
      @x * x + @y * y + @z * z
    end

    def self.dot(v1, v2)
      x = v1.x * v2.x
      y = v1.y * v2.y
      z = v1.z * v2.z
      x + y + z
    end

    def cross(v, target)
      x = @y * v.z - @z * v.y
      y = @z * v.x - @x * v.z
      z = @x * v.y - @y * v.x
      target.set(x, y, z)
    end

    def cross(v, target : Nil = nil)
      x = @y * v.z - @z * v.y
      y = @z * v.x - @x * v.z
      z = @x * v.y - @y * v.x
      self.class.new(x, y, z)
    end

    def self.cross(v1, v2, target)
      x = v1.y * v2.z - v1.z * v2.y
      y = v1.z * v2.x - v1.x * v2.z
      z = v1.x * v2.y - v1.y * v2.x
      target.set(x, y, z)
    end

    def self.cross(v1, v2, target : Nil = nil)
      x = v1.y * v2.z - v1.z * v2.y
      y = v1.z * v2.x - v1.x * v2.z
      z = v1.x * v2.y - v1.y * v2.x
      new(x, y, z)
    end

    def normalize
      mag = self.mag
      return self if mag == 0 || mag == 1

      div(mag)
    end

    def normalize(target)
      mag = self.mag
      if mag == 0 || mag == 1
        target.set(@x, @y, @z)
      else
        div(mag, target)
      end
    end

    def normalize(target : Nil = nil)
      mag = self.mag
      if mag == 0 || mag == 1
        self.class.new(@x, @y, @z)
      else
        self / mag
      end
    end

    def limit(max)
      max_sq = max * max
      if mag_sq > max_sq
        normalize
        mult(max)
      end
      self
    end

    def set_mag(len)
      normalize
      mult(len)
      self
    end

    def set_mag(target, len)
      target = normalize(target)
      target.mult(len)
    end

    def heading
      Math.atan2(@y, @x)
    end

    def heading=(angle)
      mag = self.mag
      @x = mag * Math.cos(angle)
      @y = mag * Math.sin(angle)
      angle
    end

    def rotate(theta)
      x = @x
      @x = Math.cos(theta) * x - Math.sin(theta) * @y
      @y = Math.sin(theta) * x + Math.cos(theta) * @y
      self
    end

    def lerp(v, amt)
      @x = lerp_component(@x, v.x, amt)
      @y = lerp_component(@y, v.y, amt)
      @z = lerp_component(@z, v.z, amt)
      self
    end

    def lerp(x : Float32, y : Float32, z : Float32, amt)
      @x = lerp_component(@x, x, amt)
      @y = lerp_component(@y, y, amt)
      @z = lerp_component(@z, z, amt)
    end

    def self.lerp(v1, v2, amt)
      x = lerp_component(v1.x, v2.x, amt)
      y = lerp_component(v1.y, v2.y, amt)
      z = lerp_component(v1.z, v2.z, amt)
      new(x, y, z)
    end

    def self.angle_between(v1, v2)
      return 0.0 if v1.x == 0 && v1.y == 0 && v1.z == 0
      return 0.0 if v2.x == 0 && v2.y == 0 && v2.z == 0

      dot = v1.x * v2.x + v1.y * v2.y + v1.z * v2.z
      v1_mag = Math.sqrt(v1.x * v1.x + v1.y * v1.y + v1.z * v1.z)
      v2_mag = Math.sqrt(v2.x * v2.x + v2.y * v2.y + v2.z * v2.z)
      value = dot / (v1_mag * v2_mag)

      case value
      when .<= -1 then Math::PI
      when .>= 1  then 0.0
      else             Math.acos(value)
      end
    end

    def array
      [@x, @y, @z]
    end

    def to_a
      [@x, @y, @z]
    end

    def to_s(io)
      io << "[ " << @x << ", " << @y << ", " << @z << " ]"
    end

    # FIXME: Remove this code duplication.

    private def lerp_component(a, b, t)
      a * (1.0 - t) + b * t
    end

    private def self.lerp_component(a, b, t)
      a * (1.0 - t) + b * t
    end
  end
end
