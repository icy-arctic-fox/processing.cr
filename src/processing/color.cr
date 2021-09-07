module Processing
  module Color
    def background(rgb : UInt8, alpha : UInt8 = 255)
      background(rgb, rgb, rgb, alpha)
    end

    def background(v1 : UInt8, v2 : UInt8, v3 : UInt8, alpha : UInt8 = 255)
      renderer.draw_color = SDL::Color[v1, v2, v3, alpha]
      renderer.clear
    end
  end
end
