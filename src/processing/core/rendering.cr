require "../graphics"

module Processing
  module Core
    module Rendering
      enum BlendMode
        Blend
        Add
        Subtract
        Darkest
        Lightest
        Difference
        Exclusion
        Multiply
        Screen
        Replace
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
        EnameStrokePure
        DisableAsyncSaveFrame
        DisableOpenGLErrors
        DisableDepthMask
        EnableDepthSort
        DisableDepthTest
        DisableOptimizedStroke
        EnableStrokePerspective
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
