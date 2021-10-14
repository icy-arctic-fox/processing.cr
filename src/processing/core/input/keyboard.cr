module Processing
  module Core
    module Input
      module Keyboard
        # The character value of the key that was pressed.
        getter key : Char?

        # The key code of the key that was pressed.
        getter key_code : Int32?

        # Indicates whether a key is currently pressed or not.
        getter key_pressed : Bool = false

        #
        # The placeholder event handler method for when a key is pressed.
        #
        def key_pressed
        end

        #
        # The placeholder event handler method for when a pressed key is
        # released.
        #
        def key_released
        end

        #
        # The placeholder event handler method for when a non-control or shift
        # key is pressed.
        #
        def key_typed
        end
      end
    end
  end
end
