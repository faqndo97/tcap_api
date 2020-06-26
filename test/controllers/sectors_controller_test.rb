# frozen_string_literal: true

require 'test_helper'

class SectorsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    sectors_mock = [build(:sector)]

    Sector.expects(:all).returns(sectors_mock)
    SectorSerializer.expects(:new).with(sectors_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get sectors_url, as: :json

    assert_response :success
  end

  test 'should show sector' do
    sector_mock = build_stubbed(:sector)

    Sector.expects(:find).with(sector_mock.id.to_s).returns(sector_mock)
    SectorSerializer.expects(:new).with(sector_mock, include: nil).returns(stub('to_json_mock', to_json: true))

    get sector_url(sector_mock), as: :json

    assert_response :success
  end
end
