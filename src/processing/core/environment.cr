module Processing
  module Core
    module Environment
      getter width : Int32 = 480

      getter height : Int32 = 640

      def size(width : Int32, height : Int32)
        @height = height
        @width  = width

        if @renderer
          # TODO: implement updating the display window dimensions
        end
      end
    end
  end
end
