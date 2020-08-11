# frozen_string_literal: true

require 'test_helper'

class MatchSectorsTest < ActiveSupport::TestCase
  test 'should validate match relationship presence' do
    match_sector = MatchSectors.new

    refute match_sector.valid?
    assert_equal 'must exist', match_sector.errors.messages[:match].first
  end

  test 'should validate sector relationship presence' do
    match_sector = MatchSectors.new

    refute match_sector.valid?
    assert_equal 'must exist', match_sector.errors.messages[:sector].first
  end
end
