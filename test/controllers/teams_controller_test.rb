# frozen_string_literal: true

require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get teams_url, as: :json

    assert_response :success
  end

  test 'should show team' do
    team = create(:team)

    get team_url(team), as: :json

    assert_response :success
  end

  test 'should show an exception when id doesn\'t exist' do
    get team_url(1), as: :json

    assert_response :not_found
  end
end
