require 'test_helper'

class DataunitsControllerTest < ActionController::TestCase
  setup do
    @dataunit = dataunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dataunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dataunit" do
    assert_difference('Dataunit.count') do
      post :create, dataunit: { dataValue: @dataunit.dataValue, dataset_id: @dataunit.dataset_id, geoValue: @dataunit.geoValue, user_id: @dataunit.user_id }
    end

    assert_redirected_to dataunit_path(assigns(:dataunit))
  end

  test "should show dataunit" do
    get :show, id: @dataunit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dataunit
    assert_response :success
  end

  test "should update dataunit" do
    patch :update, id: @dataunit, dataunit: { dataValue: @dataunit.dataValue, dataset_id: @dataunit.dataset_id, geoValue: @dataunit.geoValue, user_id: @dataunit.user_id }
    assert_redirected_to dataunit_path(assigns(:dataunit))
  end

  test "should destroy dataunit" do
    assert_difference('Dataunit.count', -1) do
      delete :destroy, id: @dataunit
    end

    assert_redirected_to dataunits_path
  end
end
