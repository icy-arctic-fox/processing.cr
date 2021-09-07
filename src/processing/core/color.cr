module Processing
  module Core
    #
    # Implements the [Processing Color API](https://processing.org/reference/#color).
    #
    module Color
      #
      # Sets the background color to a grayscale color.
      #
      def background(rgb : UInt8, alpha : UInt8 = 255)
        background(rgb, rgb, rgb, alpha)
      end

      #
      # Sets the background color.
      #
      def background(v1 : UInt8, v2 : UInt8, v3 : UInt8, alpha : UInt8 = 255)
        renderer.draw_color = SDL::Color[v1, v2, v3, alpha]
        renderer.clear
      end

      def background(rgb : UInt8, alpha : Float)
        # TODO: implement
      end

      def background(gray : Float)
        # TODO: implement
      end

      def background(gray : Float, alpha : Float)
        # TODO: implement
      end

      def background(v1 : Float, v2 : Float, v3 : Float)
        # TODO: implement
      end

      def background(v1 : Float, v2 : Float, v3 : Float, alpha : Float)
        # TODO: implement
      end

      #
      # Clears the background using the current background color.
      #
      def clear
        renderer.clear
      end

      #
      # Defines the available color modes.
      #
      enum ColorMode
        RGB
        HSB
      end

      def color_mode(mode : ColorMode)
        # TODO: implement
      end

      def color_mode(mode : ColorMode, max : Float)
        # TODO: implement
      end

      def color_mode(mode : ColorMode, max1 : Float, max2 : Float, max3 : Float)
        # TODO: implement
      end

      def color_mode(mode : ColorMode, max1 : Float, max2 : Float, max3 : Float, maxA : Float)
        # TODO: implement
      end

      def fill(rgb : UInt8)
        # TOOD: implement
      end

      def fill(rgb : UInt8, alpha : Float)
        # TOOD: implement
      end

      def fill(rgb : Float)
        # TOOD: implement
      end

      def fill(rgb : Float, alpha : Float)
        # TOOD: implement
      end

      def fill(v1 : UInt8, v2 : UInt8, v3 : UInt8)
        # TOOD: implement
      end

      def fill(v1 : UInt8, v2 : UInt8, v3 : UInt8, alpha : UInt8)
        # TOOD: implement
      end

      def no_fill
        # TOOD: implement
      end

      def no_stroke
        # TODO: implement
      end

      def stroke(rgb : UInt8)
        # TODO: implement
      end

      def stroke(rgb : UInt8, alpha : Float)
        # TODO: implement
      end

      def stroke(gray : Float)
        # TODO: implement
      end

      def stroke(gray : Float, alpha : Float)
        # TODO: implement
      end

      def stroke(v1 : Float, v2 : Float, v3 : Float)
        # TODO: implement
      end

      def stroke(v1 : Float, v2 : Float, v3 : Float, alpha : Float)
        # TODO: implement
      end
    end
  end
end
