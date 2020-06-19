# frozen_string_literal: true

class SectorSerializer
  include FastJsonapi::ObjectSerializer

  belongs_to :stadium

  attributes :name
end
