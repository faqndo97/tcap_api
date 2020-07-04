# frozen_string_literal: true

class TeamSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :shield_url
end
