# frozen_string_literal: true

FactoryBot.define do
  factory :team do
    name { 'Peñarol' }
    shield_url { 'https://tcap-api.herokuapp.com/shields/penarol.svg' }
  end
end
