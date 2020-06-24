# frozen_string_literal: true

FactoryBot.define do
  factory :match do
    start_date { Time.now + 5.days }
  end

  trait :with_home_team do
    association :home_team, factory: :team
  end

  trait :with_away_team do
    association :away_team, factory: :team
  end

  trait :with_stadium do
    association :stadium, factory: :stadium
  end

  trait :with_sport do
    association :sport
  end
end
