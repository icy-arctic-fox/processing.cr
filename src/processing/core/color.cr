require "sdl/color"

module Processing
  module Core
    #
    # Implements the [Processing Color API](https://processing.org/reference/#color).
    #
    module Color
      #
      # Sets the background color to a grayscale color.
      #
      def background(rgb : Int, alpha : Int | Float = 255)
        not_implemented! # TODO
      end

      def background(rgb : Int, alpha : Int | Float)
        not_implemented! # TODO
      end

      def background(gray : Int | Float)
        backgrond(gray, gray, gray)
      end

      def background(gray : Int | Float, alpha : Int | Float)
        backgrond(gray, gray, gray, alpha)
      end

      def background(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float)
        background(v1, v2, v3, 255)
      end

      #
      # Sets the background color.
      #
      def background(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float, alpha : Int | Float = 255)
        sdl_color = SDL::Color[v1, v2, v3, alpha]

        style.background_color = sdl_color

        renderer.draw_color = sdl_color
        renderer.clear
      end

      #
      # Clears the background using the current background color.
      #
      def clear
        renderer.clear
      end

      def red(color : Color) : UInt8
        color.red
      end

      def red(color : Int) : UInt8
        not_implemented!
      end

      def green(color : Color) : UInt8
        color.green
      end

      def green(color : Int) : UInt8
        not_implemented!
      end

      def blue(color : Color) : UInt8
        color.blue
      end

      def blue(color : Int) : UInt8
        not_implemented!
      end

      def alpha(color : Color) : UInt8
        color.alpha
      end

      def alpha(color : Int) : UInt8
        not_implemented!
      end

      def brightness(color : Color) : Float
        not_implemented!
      end

      def brightness(color : Int) : Float
        not_implemented!
      end

      def hue(color : Color) : UInt8
        not_implemented!
      end

      def hue(color : Int) : UInt8
        not_implemented!
      end

      def saturation(color : Color) : UInt8
        not_implemented!
      end

      def saturation(color : Int) : UInt8
        not_implemented!
      end

      def lerp_color(c1 : Int, c2 : Int, amt : Float) : Color
        not_implemented!
      end

      def color(gray : Int | Float, alpha : Int | Float = 255) : Color
        Color.new(gray.to_u8, alpha)
      end

      def color(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float, alpha : Int | Float = 255) : Color
        Color.new(v1, v2, v3, alpha)
      end

      #
      # Defines the available color modes.
      #
      enum ColorMode
        RGB
        HSB
      end

      def color_mode(mode : ColorMode)
        not_implemented! # TODO
      end

      def color_mode(mode : ColorMode, max : Int | Float)
        not_implemented! # TODO
      end

      def color_mode(mode : ColorMode, max1 : Int | Float, max2 : Int | Float, max3 : Int | Float)
        not_implemented! # TODO
      end

      def color_mode(mode : ColorMode, max1 : Int | Float, max2 : Int | Float, max3 : Int | Float, maxA : Int | Float)
        not_implemented! # TODO
      end

      def fill(rgb : Int)
        not_implemented! # TODO
      end

      def fill(rgb : Int, alpha : Float)
        not_implemented! # TODO
      end

      def fill(rgb : Int)
        not_implemented! # TODO
      end

      def fill(rgb : Int, alpha : Int | Float)
        not_implemented! # TODO
      end

      def fill(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float)
        style.fill_color = SDL::Color[v1, v2, v3]
      end

      def fill(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float, alpha : Int | Float)
        style.fill_color = SDL::Color[v1, v2, v3, alpha]
      end

      def no_fill
        style.fill_color = nil
      end

      def no_stroke
        style.stroke_color = nil
      end

      def stroke(rgb : Int)
        not_implemented! # TODO
      end

      def stroke(rgb : Int, alpha : Int | Float)
        not_implemented! # TODO
      end

      def stroke(gray : Int | Float)
        stroke(gray, gray, gray)
      end

      def stroke(gray : Int | Float, alpha : Int | Float)
        stroke(gray, gray, gray, alpha)
      end

      def stroke(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float)
        style.stroke_color = SDL::Color[v1, v2, v3]
      end

      def stroke(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float, alpha : Int | Float)
        style.stroke_color = SDL::Color[v1, v2, v3, alpha]
      end
    end
  end
end
