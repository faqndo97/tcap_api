# frozen_string_literal: true

class StadiumSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name
end
