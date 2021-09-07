module Processing
  abstract class Sketch
    def self.run
      Processing.run(new)
    end

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
