module Processing
  module Core
    module Input
      module Time
        #
        # The current day number (1 - 31).
        #
        def day : Int32
          ::Time.local.day
        end

        # 
        # The current hour (0 - 23).
        #
        def hour : Int32
          ::Time.local.hour
        end

        #
        # The number of milliseconds since the program started.
        #
        def millis : Int32
          # TODO: implement
        end

        #
        # The current minute (0 - 59).
        #
        def minute : Int32
          ::Time.local.minute
        end

        #
        # The current month (1 - 12).
        #
        def month : Int32
          ::Time.local.month
        end

        #
        # The current second (0 - 59).
        #
        def second : Int32
          ::Time.local.second
        end

        #
        # The current year number (2021, 2022, etc).
        #
        def year : Int32
          ::Time.local.year
        end
      end
    end
  end
end
