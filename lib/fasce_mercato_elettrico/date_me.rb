module FasceMercatoElettrico
  module DateMercatoElettrico

    module InstanceMethods
      def holiday_in_italy?
        case
        when wday==0
          true
        when Holidays.on(self, :it).any?
          true
        else
          false
        end
      end
    end

    def self.included(receiver)
      receiver.send :include, InstanceMethods
    end
  end
end
