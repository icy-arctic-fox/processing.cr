module Processing
  module Core
    module Shape
      #
      # Draws a single point at x,y coordinates.
      #
      def point(x,y)
        renderer.draw_point(x,y)
      end

      def point(x,y,z)
        # TODO: implement
      end

      def line(x1,y1, x2,y2)
        renderer.draw_line(x1,y1, x2,y2)
      end

      def line(x1,y1,z1, x2,y2,z2)
        # TODO: implement
      end

      def rect(x,y,width,height)
        if @fill_color
          renderer.draw_color = @fill_color.not_nil!
          renderer.fill_rect(x,y,width,height)
        end

        if @stroke_color
          renderer.draw_color = @stroke_color.not_nil!
          renderer.draw_rect(x,y,width,height)
        end
      end

      def rect(x,y,width,height,r)
        # TODO: implement
      end

      def rect(x,y,width,height,tl,tr,br,bl)
        # TODO: implement
      end

      def square(x,y,extent)
        rect(x,y,extent,extent)
      end
    end
  end
end
