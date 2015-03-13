module FourTwoSeven
  class Command

    KEYS = [
      *"A".."Z", 
      *"a".."z", 
      *"0".."9",
      " "
    ]

    DURATION = 0..15

    PROMPT = "Please PRESS '%s' on your KEYBOARD for %ss.\n"
    
    SEPARATOR = "\n\n- - -\n"
  
    attr_accessor :prev_command 

    def initialize(prev_command = nil)
      @prev_command = prev_command
    end

    def key
      @key ||= if prev_command
        KEYS - [prev_command.key]
      else
        KEYS
      end.sample
    end

    def duration
      @duration ||= rand(DURATION)
    end

    def prompt
      PROMPT % [key, duration]
    end

  end
end
