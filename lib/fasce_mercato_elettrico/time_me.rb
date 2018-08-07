module FasceMercatoElettrico

  module TimeMercatoElettrico
    module ClassMethods

      # https://www.arera.it/it/schede/C/faq-fascenondom.htm
      # https://www.arera.it/it/docs/06/181-06.htm

      def fascia_arera(dt)
        d = dt.to_date
        h = dt.hour
        case
        when holiday?(d)
          f3

        when d.saturday?
          if h>=7 && h<23
            f2
          else
            f3
          end

        else
          case
          when h>=8 && h<19
            f1
          when h>=7 && h<23
            f2
          else
            f3
          end
        end
      end

      def f1
        F1.instance
      end
      def f2
        F2.instance
      end
      def f3
        F3.instance
      end



      def fascia_gme(dt)
        d = dt.to_date
        h = dt.hour
        case
        when holiday?(d)
          off_peak

        when d.saturday?
          off_peak

        else
          if h>=8 && h<21
            peak
          else
            off_peak
          end
        end
      end

      def peak
        Peak.instance
      end

      def off_peak
        OffPeak.instance
      end
    end

    def self.included(receiver)
      receiver.extend ClassMethods
    end
  end
end
