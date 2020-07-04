# frozen_string_literal: true

FactoryBot.find_definitions

stadium = FactoryBot.create(:stadium)

FactoryBot.create(:team) # create penarol
FactoryBot.create(:team, name: 'Nacional', shield_url: 'https://tcap-api.herokuapp.com/shields/nacional.png')
FactoryBot.create(:team, name: 'Defensor', shield_url: 'https://tcap-api.herokuapp.com/shields/defensor.png')
FactoryBot.create(:team, name: 'Danubio', shield_url: 'https://tcap-api.herokuapp.com/shields/danubio.png')
FactoryBot.create(:sector, stadium: stadium)
FactoryBot.create(:sport)
FactoryBot.create(:match, :with_home_team, :with_away_team, :with_stadium, :with_sport)
