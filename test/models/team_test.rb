# frozen_string_literal: true

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test 'should validate name presence' do
    team = Team.new

    refute team.valid?
    assert_equal "can't be blank", team.errors.messages[:name].first
  end
end
