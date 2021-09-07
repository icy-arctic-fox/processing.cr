module Processing
  private class Driver
    def initialize(@sketch : Sketch)
      setup

      @window = SDL::Window.new(
        @sketch.surface.title, @sketch.width, @sketch.height
      )
      @renderer = SDL::Renderer.new(@window)
      @sketch.renderer = @renderer
    end

    def setup
      @sketch.setup
    end

    def run
      loop do
        event = SDL::Event.wait
        break unless process_sdl_event(event)
        @sketch.draw
        @renderer.present
        @window.update
        break unless @sketch.loop?
      end
    end

    private def process_sdl_event(event)
      case event
      when SDL::Event::Quit then false
      else                       true
      end
    end
  end
end
