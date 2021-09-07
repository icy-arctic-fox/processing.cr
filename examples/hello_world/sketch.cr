require "../../src/processing"

class Sketch < Processing::Sketch
  def setup
    size(400, 200)
    surface.set_title "Hello World"
  end

  def draw
    background(0, 0, 255)
    fill(0, 255, 0)
    stroke(255, 0, 0)
    rect(20, 20, 100, 100)
  end
end

Sketch.run
