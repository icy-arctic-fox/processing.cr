module Processing
  module Core
    module Output
      module Printing
        #
        # Prints an array to stdout.
        #
        def print_arrray(array : Array)
          array.each_with_index do |value, index|
            puts "[#{index}] #{value.inspect}"
          end
        end

        @[AlwaysInline]
        def println(string : String)
          puts(string)
        end
      end
    end
  end
end
