require "../graphics"

module Processing
  module Core
    module Rendering
      enum BlendMode
        BLEND
        ADD
        SUBTRACT
        DARKEST
        LIGHTEST
        DIFFERENCE
        EXCLUSION
        MULTIPLY
        SCREEN
        REPLACE
      end

      def blend_mode(mode : BlendMode)
        # TODO: implement
      end

      def clip(a : Float32, b : Float32, c : Float32, d : Float32)
        # TODO: implement
      end

      def create_graphics(w : Int, h : Int) : Graphics
        # TODO: implement
      end

      def create_graphics(w : Int, h : Int, renderer : String) : Graphics
        # TODO: implement
      end

      def create_graphics(w : Int, h : Int, renderer : String, path : String) : Graphics
        # TODO: implement
      end

      enum Hint
        ENABLE_STROKE_PURE
        DISABLE_ASYNC_SAVEFRAME
        DISABLE_OPENGL_ERRORS
        DISABLE_DEPTH_MASK
        ENABLE_DEPTH_SORT
        DISABLE_DEPTH_TEST
        DISABLE_OPTIMIZED_STROKE
        ENABLE_STROKE_PERSPECTIVE
      end

      def hint(which : Hint)
        # TODO: implement
      end

      def no_clip
        # TODO: implement
      end
    end
  end
end
