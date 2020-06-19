# frozen_string_literal: true

require 'test_helper'

class SectorTest < ActiveSupport::TestCase
  test 'should validate name presence' do
    sector = Sector.new

    refute sector.valid?
    assert_equal "can't be blank", sector.errors.messages[:name].first
  end

  test 'should validate stadium relationship presence' do
    sector = Sector.new

    refute sector.valid?
    assert_equal 'must exist', sector.errors.messages[:stadium].first
  end
end
