module PatchMeIn
  module Base
    extend ActiveSupport::Concern

    included do
      extend ActiveSupport::Concern
      @@patches = nil
    end

    class_methods do
      def patches(name)
        name = name.name if name.is_a?(Module)
        @@patches = name
      end

      def patched_name
        @@patches || name.sub(/Patch$/, "")
      end

      def patched_module
        patched_name.constantize
      end

      def apply!
        puts "Applying #{patched_name} to #{self}"
        patched_module.tap { _1.include self }
      end
    end
  end
end
