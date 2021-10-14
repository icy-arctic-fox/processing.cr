module Processing
  #
  # Equivalent of `java.awt.Color`.
  #
  struct Color
    property r : UInt8

    property g : UInt8

    property b : UInt8

    property a : UInt8

    def initialize(gray : UInt8, alpha : UInt8 = 255)
      initialize(gray, gray, gray, alpha)
    end

    def initialize(@r : UInt8, @g : UInt8, @b : UInt8, @a : UInt8 = 255)
    end

    def initialize(r : Int | Float, g : Int | Float, b : Int | Float)
      initialize(r.to_u8, g.to_u8, b.to_u8)
    end

    def initialize(r : Int | Float, g : Int | Float, b : Int | Float, a : Int | Float)
      initialize(r.to_u8, g.to_u8, b.to_u8, a.to_u8)
    end

    #
    # Unpacks the color from a 32bit integer.
    #
    # * Bits 24-31: alpha
    # * Bits 16-23: red
    # * Bits 8-15: green
    # * Bits 0-7: blue
    #
    def self.unpack(int : Int32 | UInt32) : Color
      new(
        r: (int & 0xff0000) >> 16,
        g: (int & 0xff00) >> 8,
        b: (int & 0xff),
        a: (int & 0xff000000) >> 24
      )
    end

    @[AlwaysInline]
    def red
      @r
    end

    @[AlwaysInline]
    def green
      @g
    end

    @[AlwaysInline]
    def blue
      @b
    end

    @[AlwaysInline]
    def alpha
      @a
    end

    #
    # Converts the color to an 32bit integer.
    #
    # * Bits 24-31: alpha
    # * Bits 16-23: red
    # * Bits 8-15: green
    # * Bits 0-7: blue
    #
    def to_i : Int32
      @b.to_i32 | (@g.to_i32 << 8) | (@r.to_i32 << 16) | (@a.to_i32 << 24)
    end
  end
end
