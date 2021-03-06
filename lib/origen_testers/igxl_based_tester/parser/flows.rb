module OrigenTesters
  class IGXLBasedTester
    class Parser
      class Flows < ::OrigenTesters::Parser::SearchableArray
        attr_accessor :parser

        def initialize(options = {})
          @parser = options[:parser]
        end

        def import(file)
          self << Flow.new(file, parser: parser)
        end

        def inspect
          "<TestFlows: #{size}>"
        end
      end
    end
  end
end
