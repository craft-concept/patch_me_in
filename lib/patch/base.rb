module Patch
  module Base
    extend ActiveSupport::Concern

    @@patches = []

    included do
      extend ActiveSupport::Concern
    end

    class_methods do
      def patches(klass)
        @@patches << klass
      end

      def apply!
        @@patches.each { _1.include self }
      end
    end
  end
end
