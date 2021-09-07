require "sdl"
require "./processing/*"

module Processing
  extend self

  VERSION = {{ `shards version #{__DIR__}`.stringify.chomp }}

  private class_getter? started = false

  def run(sketch)
    startup unless started?
    Driver.new(sketch).run
  ensure
    shutdown
  end

  private def startup
    SDL.init(SDL::Init::VIDEO)
    @@started = true
  end

  private def shutdown
    SDL.quit
    @@started = false
  end
end
