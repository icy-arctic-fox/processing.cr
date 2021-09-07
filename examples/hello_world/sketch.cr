require "../../src/processing"

class Sketch < Processing::Sketch
  def setup
    set_title "Hello World"
    size(400, 200)
  end

  def draw
    background(51)
  end
end

Sketch.run
