# frozen_string_literal: true

module Waterious
  # Representer class for converting Coordinates property to json
  class CoordinateRepresenter < Roar::Decorator
    include Roar::JSON

    property :latitude
    property :longitude
  end
end
