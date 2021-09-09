require "./shape/primitives_2d"

module Processing
  module Core
    module Shape
      enum ShapeType
        Ellipse
        Rect
        Arc
        Triangle
        Sphere
        Box
        Quad
        Line
      end

      def create_shape
        not_implemented!
      end

      def create_shape(type : ShapeType, *points)
        not_implemented!
      end
    end
  end
end
