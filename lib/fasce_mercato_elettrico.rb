require 'date'
require 'holidays'

require "fasce_mercato_elettrico/version"
require "fasce_mercato_elettrico/date_me"
require "fasce_mercato_elettrico/time_me"
require "fasce_mercato_elettrico/fascia_arera"
require "fasce_mercato_elettrico/fascia_gme"

class FasceME
  include FasceMercatoElettrico::DateMercatoElettrico
  include FasceMercatoElettrico::TimeMercatoElettrico
end

include FasceMercatoElettrico::FasciaAreraMercatoElettrico
