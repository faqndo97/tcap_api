# frozen_string_literal: true

require 'test_helper'

class StadiumTest < ActiveSupport::TestCase
  test 'should validate name presence' do
    stadium = Stadium.new

    refute stadium.valid?
    assert_equal "can't be blank", stadium.errors.messages[:name].first
  end
end
