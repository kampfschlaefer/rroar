

module Rroar
  module Recorder
    #
    # Record all function calls with their arguments and return values
    #

    #print self.class.instance_methods(false)

    def initialize
      @recording = false
      @recorded = []
      @myfuncs = {}
      #print self.class.instance_methods(false)
      self.class.instance_methods(false).each do |method|
        #print "Should remove method #{method}"
        @myfuncs[method] = self.class.instance_method(method)
        self.class.class_eval do undef_method(method) end
        #self.class.undef_method method
      #  self.instance_eval "def rr_#{method}; do print 'Should call #{method}' end"
      #  print self.class.instance_method(method).parameters
      #  #self.class.module_eval("@@rr_#{method} = self.instance_method(:#{method})")
      #  #self.class.class_eval("@@rr_#{method}.bind(self)")
      #  #self.class.class_eval("def #{method} { rr_#{method} }")
      end
      #print self.class.instance_methods(false)
    end

    def method_missing(m, *args, &block)
      print "method_missing: Called #{m} with #{args.inspect}\n"
      print " myfuncs is #{@myfuncs}\n"
      if @myfuncs.has_key?(m)
        #@myfuncs[m](*args, &block)
        print "Should record this call!"
      end
    end

    def start_recording
      @recording = true
    end

    def get_recording
      @recorded
    end
  end
end
