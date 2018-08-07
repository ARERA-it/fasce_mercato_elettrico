require 'singleton'

module FasceMercatoElettrico

  module FasciaAreraMercatoElettrico
    class FasciaArera
      include Singleton
    end

    class F1 < FasciaArera
      def to_s
        "F1"
      end
      def to_i
        1
      end
    end

    class F2 < FasciaArera
      def to_s
        "F2"
      end
      def to_i
        2
      end
    end

    class F3 < FasciaArera
      def to_s
        "F3"
      end
      def to_i
        3
      end
    end


  end
end
