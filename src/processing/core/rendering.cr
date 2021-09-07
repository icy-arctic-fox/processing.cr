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
        not_implemented! # TODO
      end

      def clip(a : Float, b : Float, c : Float, d : Float)
        not_implemented! # TODO
      end

      def create_graphics(w : Int, h : Int) : Graphics
        not_implemented! # TODO
      end

      def create_graphics(w : Int, h : Int, renderer : String) : Graphics
        not_implemented! # TODO
      end

      def create_graphics(w : Int, h : Int, renderer : String, path : String) : Graphics
        not_implemented! # TODO
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
        not_implemented! # TODO
      end

      def no_clip
        not_implemented! # TODO
      end
    end
  end
end
