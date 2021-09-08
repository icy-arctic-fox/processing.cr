module Processing
  struct Color

    property r : UInt8

    property g : UInt8

    property b : UInt8

    property a : UInt8

    def initialize(gray : UInt8, alpha : UInt8 = 255)
      initialize(gray,gray,gray,alpha)
    end

    def initialize(@r : UInt8, @g : UInt8, @b : UInt8, @a : UInt8 = 255)
    end

    def initialize(r : Int | Float, g : Int | Float, b : Int | Float)
      initialize(r.to_u8,g.to_u8,b.to_u8)
    end

    def initialize(r : Int | Float, g : Int | Float, b : Int | Float, a : Int | Float)
      initialize(r.to_u8,g.to_u8,b.to_u8,a.to_u8)
    end

    @[AlwaysInline]
    def red
      r
    end

    @[AlwaysInline]
    def green
      g
    end

    @[AlwaysInline]
    def blue
      b
    end

    @[AlwaysInline]
    def alpha
      a
    end

  end
end
