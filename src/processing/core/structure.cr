module Processing
  module Core
    module Structure
      # The current window title.
      getter title : String = "Processing"

      #
      # Sets the window title.
      #
      def set_title(new_title : String)
        @title = new_title
      end
    end
  end
end
