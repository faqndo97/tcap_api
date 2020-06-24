# frozen_string_literal: true

require 'test_helper'

class MatchTest < ActiveSupport::TestCase
  test 'should validate start_date presence' do
    match = Match.new

    refute match.valid?
    assert_equal "can't be blank", match.errors.messages[:start_date].first
  end

  test 'should validate home_team relationship presence' do
    match = Match.new

    refute match.valid?
    assert_equal 'must exist', match.errors.messages[:home_team].first
  end

  test 'should validate away_team relationship presence' do
    match = Match.new

    refute match.valid?
    assert_equal 'must exist', match.errors.messages[:away_team].first
  end

  test 'should validate sport relationship presence' do
    match = Match.new

    refute match.valid?
    assert_equal 'must exist', match.errors.messages[:sport].first
  end

  test 'should validate stadium relationship presence' do
    match = Match.new

    refute match.valid?
    assert_equal 'must exist', match.errors.messages[:stadium].first
  end
end
