# frozen_string_literal: true

require 'test_helper'

class StadiumsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    stadiums_mock = [build(:stadium)]

    Stadium.expects(:all).returns(stadiums_mock)
    StadiumSerializer.expects(:new).with(stadiums_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get stadiums_url, as: :json

    assert_response :success
  end

  test 'should show stadium' do
    stadium_mock = build_stubbed(:stadium)

    Stadium.expects(:find).with(stadium_mock.id.to_s).returns(stadium_mock)
    StadiumSerializer.expects(:new).with(stadium_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get stadium_url(stadium_mock), as: :json

    assert_response :success
  end

  test 'should show an exception when id doesn\'t exist' do
    get stadium_url(1), as: :json

    assert_response :not_found
  end
end
