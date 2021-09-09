require "./shape/primitives_2d"
require "../shape"

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

      def create_shape : Processing::Shape
        not_implemented!
      end

      def create_shape(type : ShapeType, *points) : Processing::Shape
        not_implemented!
      end

      def load_shape(path : String) : Processing::Shape
        not_implemented!
      end
    end
  end
end
