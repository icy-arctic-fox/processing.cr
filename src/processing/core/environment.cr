module Processing
  module Core
    module Environment
      getter width : Int32 = 480

      getter height : Int32 = 640

      def size(width : Int32, height : Int32)
        @height = height
        @width  = width

        if @renderer
          not_implemented! # TODO: implement updating the display window dimensions
        end
      end

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
    end
  end
end
