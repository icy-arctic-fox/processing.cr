require "../../src/processing"

class Sketch < Processing::Sketch
  def setup
    size(400, 200)
    surface.set_title "Hello World"
  end

  def draw
    background(51)
  end
end

Sketch.run
