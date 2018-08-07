module FasceMercatoElettrico
  module DateMercatoElettrico
    module ClassMethods

      def holiday?(date)
        case
        when date.wday==0
          true
        when Holidays.on(date, :it).any?
          true
        else
          false
        end
      end
    end

    def self.included(receiver)
      receiver.extend ClassMethods
    end
  end
end
