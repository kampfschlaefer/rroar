

module Rroar
  module Recorder
    #
    # Record all function calls with their arguments and return values
    #

    def initialize
      @recording = false
      @recorded = []
    end

    def start_recording
      @recording = true
    end

    def get_recording
      @recorded
    end
  end
end
