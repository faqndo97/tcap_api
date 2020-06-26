#  frozen_string_literal: true

require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    match_mock = [build(:match, :with_home_team, :with_away_team, :with_stadium, :with_sport)]

    Match.expects(:all).returns(match_mock)
    MatchSerializer.expects(:new).with(match_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get matches_url, as: :json

    assert_response :success
  end

  test 'should show match' do
    match_mock = build_stubbed(:match, :with_home_team, :with_away_team, :with_stadium, :with_sport)

    Match.expects(:find).with(match_mock.id.to_s).returns(match_mock)
    MatchSerializer.expects(:new).with(match_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get match_url(match_mock), as: :json

    assert_response :success
  end
end
