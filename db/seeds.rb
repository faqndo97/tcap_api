# frozen_string_literal: true

FactoryBot.find_definitions

stadium = FactoryBot.create(:stadium)

FactoryBot.create(:team)
FactoryBot.create(:sector, stadium: stadium)
FactoryBot.create(:sport)
