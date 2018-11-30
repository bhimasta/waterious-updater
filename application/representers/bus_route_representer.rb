# frozen_string_literal: true

require_relative 'name_representer'
# require_relative 'sub_route_representer'

module Waterious
  # Representer class for converting BusRoute attributes to json
  class BusRouteRepresenter < Roar::Decorator
    include Roar::JSON

    property :id
    property :name, extend: NameRepresenter, class: OpenStruct
    property :depart_name, extend: NameRepresenter, class: OpenStruct
    property :destination_name, extend: NameRepresenter, class: OpenStruct
    property :authority_id
  end
end
