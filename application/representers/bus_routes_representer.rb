# frozen_string_literal: true

require_relative 'bus_route_representer'

# Represents essential Repo information for API output
module Waterious
  class BusRoutesRepresenter < Roar::Decorator
    include Roar::JSON

    collection :routes, extend: BusRouteRepresenter, class: OpenStruct
  end
end
