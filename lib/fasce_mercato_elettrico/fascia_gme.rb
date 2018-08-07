require 'singleton'

module FasceMercatoElettrico

  module FasciaAreraMercatoElettrico
    class FasciaGME
      include Singleton
    end

    class Peak < FasciaArera
      def to_s
        "Peak"
      end
      def to_i
        1
      end
    end

    class OffPeak < FasciaArera
      def to_s
        "OffPeak"
      end
      def to_i
        0
      end
    end
  end
end
