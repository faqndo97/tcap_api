# frozen_string_literal: true

require 'test_helper'

class SportTest < ActiveSupport::TestCase
  test 'should validate name presence' do
    sport = Sport.new

    refute sport.valid?
    assert_equal "can't be blank", sport.errors.messages[:name].first
  end
end
