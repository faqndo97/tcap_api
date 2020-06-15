# frozen_string_literal: true

require 'test_helper'

class StadiumsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get stadiums_url, as: :json

    assert_response :success
  end

  test 'should show stadium' do
    stadium = create(:stadium)

    get stadium_url(stadium), as: :json

    assert_response :success
  end

  test 'should show an exception when id doesn\'t exist' do
    get stadium_url(1), as: :json

    assert_response :not_found
  end
end
