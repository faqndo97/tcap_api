# frozen_string_literal: true

require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    teams_mock = [build(:team)]

    ::Team.expects(:all).returns(teams_mock)
    ::TeamSerializer.expects(:new).with(teams_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get teams_url, as: :json

    assert_response :success
  end

  test 'should show team' do
    team_mock = build_stubbed(:team)

    Team.expects(:find).with(team_mock.id.to_s).returns(team_mock)
    ::TeamSerializer.expects(:new).with(team_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get team_url(team_mock), as: :json

    assert_response :success
  end

  test 'should show an exception when id doesn\'t exist' do
    get team_url(1), as: :json

    assert_response :not_found
  end
end
