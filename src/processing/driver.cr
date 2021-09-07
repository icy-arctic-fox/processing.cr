module Processing
  private class Driver
    def initialize(@sketch : Sketch)
      @window = SDL::Window.new("Processing", 640, 480)
    end

    def run
      loop do
        event = SDL::Event.wait
        break unless process_sdl_event(event)
        @sketch.draw
        @window.update
        break unless @sketch.loop?
      end
    end

    private def process_sdl_event(event)
      case event
      when SDL::Event::Quit then false
      else true
      end
    end
  end
end
