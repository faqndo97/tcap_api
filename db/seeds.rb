# frozen_string_literal: true

FactoryBot.find_definitions

stadium = FactoryBot.create(:stadium) unless Stadium.count.positive?

penarol = FactoryBot.create(:team) unless Team.exists?('Peñarol')

unless Team.exists?('Nacional')
  nacional = FactoryBot.create(:team, name: 'Nacional', shield_url: 'https://tcap-api.herokuapp.com/shields/nacional.png')
end

unless Team.exists?('Defensor')
  defensor = FactoryBot.create(:team, name: 'Defensor', shield_url: 'https://tcap-api.herokuapp.com/shields/defensor.png')
end

unless Team.exists?('Danubio')
  danubio = FactoryBot.create(:team, name: 'Danubio', shield_url: 'https://tcap-api.herokuapp.com/shields/danubio.png')
end

FactoryBot.create(:sector, stadium: stadium) unless Sector.count.positive?
FactoryBot.create(:sport) unless Sport.count.positive?

unless Match.count.positive?
  FactoryBot.create(:match, :with_stadium, :with_sport, home_team: penarol, away_team: nacional)
  FactoryBot.create(:match, :with_stadium, :with_sport, home_team: penarol, away_team: defensor)
  FactoryBot.create(:match, :with_stadium, :with_sport, home_team: penarol, away_team: danubio)
end
