require "../renderer"

module Processing
  module Core
    module Environment
      enum Cursor
        Arrow
        Cross
        Hand
        Move
        Text
        Wait
      end

      def cursor(kind : Cursor)
        not_implemented!
      end

      def cursor(img)
        not_implemented!
      end

      def cursor(img, x, y)
        not_implemented!
      end

      def cursor
        not_implemented!
      end

      #
      # Sleeps for the number of milliseconds.
      #
      def delay(milliseconds : Int32)
        sleep(milliseconds / 1000)
      end

      def display_density : Int32
        not_implemented!
      end

      def display_width : Int32
        not_implemented!
      end

      def display_height : Int32
        not_implemented!
      end

      def focused : Bool
        not_implemented!
      end

      getter frame_count : Int32 = 0

      def frame_rate : Int32
        not_implemented!
      end

      def frame_rate(fps : Float)
        not_implemented!
      end

      @full_screen : Bool = false

      def full_screen
        @full_screen = true
      end

      def full_screen? : Bool
        @full_screen
      end

      def full_screen(display : Int32)
        not_implemented!
      end

      def full_screen(renderer : Renderer)
        not_implemented!
      end

      def full_screen(renderer : Renderer, display : Int32)
        not_implemented!
      end

      def no_cursor
        not_implemented!
      end

      @smooth : Int32 = 0

      def no_smooth
        @smooth = 0
      end

      def smooth(level : Int32)
        case level
        when 2,4,8
        @smooth = level
      end

      def pixel_density(density : Int32)
        case density
        when 1,2
          not_implemented!
        else
          raise(ArgumentError.new("pixel density must be 1 or 2"))
        end
      end

      def pixel_height
        not_implemented!
      end

      def pixel_width
        not_implemented!
      end

      #
      # Placeholder method for defining settings.
      #
      def settings
      end

      getter width : Int32 = 480

      getter height : Int32 = 640

      def size(width : Int32, height : Int32)
        @height = height
        @width  = width

        if @renderer
          not_implemented! # TODO: implement updating the display window dimensions
        end
      end
    end
  end
end
