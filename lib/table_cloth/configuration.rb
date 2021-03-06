module TableCloth
  class Configuration
    include ConfigurableElements

    class << self
      def configure(&block)
        block.arity > 0 ? block.call(self) : yield
      end

      def config_for(type)
        self.send(type).to_hash
      end
    end
  end
end