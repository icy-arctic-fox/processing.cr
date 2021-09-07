module Processing
  module Core
    module Input
      module Mouse
        enum MouseButton
          LEFT
          RIGHT
          MIDDLE
        end

        # The mouse button that was pressed.
        getter mouse_button : MouseButton?

        # Whether a mouse button is current pressed or not.
        getter mouse_pressed : Bool = false

        # The current X coordinate of the mouse cursor
        getter mouse_x : Int32 = 0

        # The current Y coordinate of the mouse cursor
        getter mouse_y : Int32 = 0

        # The X coordinate that a mouse button was pressed at.
        getter pmouse_x : Int32?

        # The Y coordinate that a mouse button was pressed at.
        getter pmouse_y : Int32?

        #
        # Placeholder event handler method for when the mouse is clicked.
        #
        def mouse_clicked
        end

        #
        # Placeholder event handler method for when the mouse is clicked and
        # dragged.
        #
        def mouse_dragged
        end

        #
        # Placeholder event handler method for when the mouse is moved.
        #
        def mouse_moved
        end

        #
        # Placeholder event handler method for when a mouse button is pressed.
        #
        def mouse_pressed
        end

        #
        # Placeholder event handler method for when a mouse button is released.
        #
        def mouse_released
        end

        #
        # Placeholder event handler method for when a mouse wheel is rotated.
        #
        def mouse_wheel(event)
        end

      end
    end
  end
end
