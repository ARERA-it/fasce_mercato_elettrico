require 'date'
require 'holidays'

require "fasce_mercato_elettrico/version"
require "fasce_mercato_elettrico/date_me"
require "fasce_mercato_elettrico/time_me"
require "fasce_mercato_elettrico/fascia_arera"
require "fasce_mercato_elettrico/fascia_gme"

include FasceMercatoElettrico::ARERA
include FasceMercatoElettrico::GME

class Date
  include FasceMercatoElettrico::DateMercatoElettrico
end

class Time
  include FasceMercatoElettrico::TimeMercatoElettrico
end
