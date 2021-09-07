require "sdl/color"

module Processing
  module Core
    #
    # Implements the [Processing Color API](https://processing.org/reference/#color).
    #
    module Color
      @background_color : SDL::Color?

      #
      # Sets the background color to a grayscale color.
      #
      def background(rgb : Int, alpha : Int | Float = 255)
        # TODO: implement
      end

      def background(rgb : Int, alpha : Int | Float)
        # TODO: implement
      end

      def background(gray : Int | Float)
        backgrond(gray,gray,gray)
      end

      def background(gray : Int | Float, alpha : Int | Float)
        backgrond(gray,gray,gray,alpha)
      end

      def background(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float)
        background(v1,v2,v3,255)
      end

      #
      # Sets the background color.
      #
      def background(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float, alpha : Int | Float = 255)
        @background_color = SDL::Color[v1, v2, v3, alpha]

        renderer.draw_color = @background_color.not_nil!
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

      def color_mode(mode : ColorMode, max : Int | Float)
        # TODO: implement
      end

      def color_mode(mode : ColorMode, max1 : Int | Float, max2 : Int | Float, max3 : Int | Float)
        # TODO: implement
      end

      def color_mode(mode : ColorMode, max1 : Int | Float, max2 : Int | Float, max3 : Int | Float, maxA : Int | Float)
        # TODO: implement
      end

      @fill_color : SDL::Color?

      def fill(rgb : Int)
        # TOOD: implement
      end

      def fill(rgb : Int, alpha : Float)
        # TOOD: implement
      end

      def fill(rgb : Int)
        # TOOD: implement
      end

      def fill(rgb : Int, alpha : Int | Float)
        # TOOD: implement
      end

      def fill(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float)
        @fill_color = SDL::Color[v1, v2, v3]
      end

      def fill(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float, alpha : Int | Float)
        @fill_color = SDL::Color[v1, v2, v3, alpha]
      end

      def no_fill
        @fill_color = nil
      end

      @stroke_color : SDL::Color?

      def no_stroke
        @stroke_color = nil
      end

      def stroke(rgb : Int)
        # TODO: implement
      end

      def stroke(rgb : Int, alpha : Int | Float)
        # TODO: implement
      end

      def stroke(gray : Int | Float)
        stroke(gray, gray, gray)
      end

      def stroke(gray : Int | Float, alpha : Int | Float)
        stroke(gray, gray, gray, alpha)
      end

      def stroke(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float)
        @stroke_color = SDL::Color[v1, v2, v3]
      end

      def stroke(v1 : Int | Float, v2 : Int | Float, v3 : Int | Float, alpha : Int | Float)
        @stroke_color = SDL::Color[v1, v2, v3, alpha]
      end
    end
  end
end
