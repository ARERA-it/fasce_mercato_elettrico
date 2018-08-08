require 'singleton'

module FasceMercatoElettrico

  module GME
    class FasciaGME
      include Singleton
    end

    class Peak < FasciaGME
      def to_s
        "P"
      end
      def to_i
        1
      end
    end

    class OffPeak < FasciaGME
      def to_s
        "OP"
      end
      def to_i
        0
      end
    end
  end
end
