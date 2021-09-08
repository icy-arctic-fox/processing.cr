module Processing
  module Core
    module Data
      module Conversion
        def binary(value : Int) : String
          value.to_s(2)
        end

        def binary(value : Int, digits : Int32) : String
          binary(value)[digits..-1]
        end

        def boolean(value : String) : Bool
          value == "true"
        end

        alias Byte = UInt8

        def byte(char : Char) : Byte
          char.to_u8
        end

        def byte(byte : Byte) : Byte
          byte
        end

        def byte(boolean : Bool)
          if boolean
            1_u8
          else
            0_u8
          end
        end

        def byte(color) : Byte
          not_implemented!
        end

        def byte(float : Float32) : Byte
          not_implemented!
        end

        def byte(double : Float64) : Byte
          not_implemented!
        end

        def byte(int : Int) : Byte
          int.to_u8
        end

        def char(boolean : Bool) : Char
          not_implemented!
        end

        def char(byte : Byte) : Char
          byte.unsafe_chr
        end

        def char(char : Char) : Char
          char
        end

        def char(color) : Char
          not_implemented!
        end

        def char(float : Float32) : Char
          not_implemented!
        end

        def char(double : Float64) : Char
          not_implemented!
        end

        def char(int : Int) : Char
          int.chr
        end

        def float(int : Int) : Float32
          int.to_f32
        end

        def float(string : String) : Float32
          string.to_f32
        end

        def hex(int : Int) : String
          int.to_s(16)
        end

        def hex(int : Int, digits : Int32) : String
          hex(int)[digits..-1]
        end

        def hex(byte : Byte) : String
          byte.to_s(16)
        end

        def hex(byte : Byte, digits : Int32) : String
          hex(byte)[digits..-1]
        end

        def hex(char : Char) : String
          char.to_u8.to_s(16)
        end

        def hex(char : Char, digits : Int32) : String
          hex(char)[digits..-1]
        end

        def hex(color) : String
          not_implemented!
        end

        def hex(color, digits : Int32) : String
          not_implemented!
        end

        def int(boolean : Bool) : Int32
          if boolean
            1_i32
          else
            0_i32
          end
        end

        def int(byte : Byte) : Int32
          byte.to_i32
        end

        def int(char : Char) : Int32
          char.to_i32
        end

        def int(color) : Int32
          not_implemented!
        end

        def int(float : Float) : Int32
          float.to_i32
        end

        def int(int : Int) : Int
          int
        end

        def str(boolean : Bool) : String
          boolean.to_s
        end

        def str(byte : Byte) : String
          byte.to_s
        end

        def str(char : Char) : String
          char.to_s
        end

        def str(int : Int) : String
          int.to_s
        end

        def str(float : Float) : String
          float.to_s
        end

        def unbinary(string : String) : Int
          string.to_i(2)
        end

        def unhex(string : String) : Int
          string.to_i(16)
        end
      end
    end
  end
end
