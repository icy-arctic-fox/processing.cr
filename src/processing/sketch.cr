require "./surface"
require "./style"
require "./types"
require "./core/environment"
require "./core/structure"
require "./core/color"
require "./core/shape"
require "./core/math"
require "./core/rendering"
require "./core/input/mouse"
require "./core/input/keyboard"
require "./core/input/time"
require "./core/data/conversion"
require "./core/output/printing"

module Processing
  abstract class Sketch
    include Core::Constants
    include Core::Environment
    include Core::Structure
    include Core::Color
    include Core::Shape
    include Core::Math
    include Core::Rendering
    include Core::Input::Mouse
    include Core::Input::Keyboard
    include Core::Input::Time
    include Core::Data::Conversion
    include Core::Output::Printing

    getter surface : Surface

    def self.run
      Processing.run(new)
    end

    protected property! renderer : SDL::Renderer

    getter? loop : Bool = true

    def initialize
      @surface = Surface.new

      @style_stack = Array(Style).new
      push_style
    end

    def setup
    end

    def draw
    end

    def redraw
      clear
      draw

      @frame_count += 1
    end

    def loop
      @loop = true
    end

    def no_loop
      @loop = false
    end

    def push_style
      @style = Style.new
      @style_stack.push(@style.not_nil!)
    end

    def pop_style
      @style = @style_stack.pop
      return
    end

    def style : Style
      @style.not_nil!
    end
  end
end
