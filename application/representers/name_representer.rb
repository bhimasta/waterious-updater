# frozen_string_literal: true

module Waterious
  # Representer class for converting Name property to json
  class NameRepresenter < Roar::Decorator
    include Roar::JSON

    property :english
    property :chinese
  end
end
