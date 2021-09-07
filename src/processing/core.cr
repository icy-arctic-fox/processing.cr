require "./core/*"

module Processing
  module Core
    private macro not_implemented!
      raise NotImplementedError.new({{@type.stringify}} + '#' + {{@def.name.stringify}})
    end
  end
end
