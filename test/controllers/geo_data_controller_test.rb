require 'test_helper'

class GeoDataControllerTest < ActionController::TestCase
  setup do
    @geo_datum = geo_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geo_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geo_datum" do
    assert_difference('GeoDatum.count') do
      post :create, geo_datum: { dataId: @geo_datum.dataId, dataName: @geo_datum.dataName, dataValue: @geo_datum.dataValue, dataYear: @geo_datum.dataYear, geoId: @geo_datum.geoId, geoName: @geo_datum.geoName, geoValue: @geo_datum.geoValue, geoYear: @geo_datum.geoYear, scale: @geo_datum.scale }
    end

    assert_redirected_to geo_datum_path(assigns(:geo_datum))
  end

  test "should show geo_datum" do
    get :show, id: @geo_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geo_datum
    assert_response :success
  end

  test "should update geo_datum" do
    patch :update, id: @geo_datum, geo_datum: { dataId: @geo_datum.dataId, dataName: @geo_datum.dataName, dataValue: @geo_datum.dataValue, dataYear: @geo_datum.dataYear, geoId: @geo_datum.geoId, geoName: @geo_datum.geoName, geoValue: @geo_datum.geoValue, geoYear: @geo_datum.geoYear, scale: @geo_datum.scale }
    assert_redirected_to geo_datum_path(assigns(:geo_datum))
  end

  test "should destroy geo_datum" do
    assert_difference('GeoDatum.count', -1) do
      delete :destroy, id: @geo_datum
    end

    assert_redirected_to geo_data_path
  end
end
