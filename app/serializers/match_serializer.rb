# frozen_string_literal: true

class MatchSerializer
  include FastJsonapi::ObjectSerializer

  attributes :start_date

  belongs_to :home_team, serializer: TeamSerializer
  belongs_to :away_team, serializer: TeamSerializer
  belongs_to :stadium

  has_many :sectors
end
