require "./core/color"
require "./core/math"
require "./core/rendering"

module Processing
  abstract class Sketch
    include Core::Color
    include Core::Math
    include Core::Rendering

    def self.run
      Processing.run(new)
    end

    protected property! renderer : SDL::Renderer

    getter? loop : Bool = true

    def setup
    end

    def draw
    end

    def loop
      @loop = true
    end

    def no_loop
      @loop = false
    end
  end
end
