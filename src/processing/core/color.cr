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

      def color_mode(mode : ColorMode, max : Float32)
        # TODO: implement
      end

      def color_mode(mode : ColorMode, max1 : Float32, max2 : Float32, max3 : Float32)
        # TODO: implement
      end

      def color_mode(mode : ColorMode, max1 : Float32, max2 : Float32, max3 : Float32, maxA : Float32)
        # TODO: implement
      end

      def fill(rgb : UInt8)
        # TOOD: implement
      end

      def fill(rgb : UInt8, alpha : Float32)
        # TOOD: implement
      end

      def fill(rgb : Float32)
        # TOOD: implement
      end

      def fill(rgb : Float32, alpha : Float32)
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
    end
  end
end
