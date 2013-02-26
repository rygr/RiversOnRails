require 'test_helper'

class RiverNamesControllerTest < ActionController::TestCase
  setup do
    @river_name = river_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:river_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create river_name" do
    assert_difference('RiverName.count') do
      post :create, river_name: @river_name.attributes
    end

    assert_redirected_to river_name_path(assigns(:river_name))
  end

  test "should show river_name" do
    get :show, id: @river_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @river_name
    assert_response :success
  end

  test "should update river_name" do
    put :update, id: @river_name, river_name: @river_name.attributes
    assert_redirected_to river_name_path(assigns(:river_name))
  end

  test "should destroy river_name" do
    assert_difference('RiverName.count', -1) do
      delete :destroy, id: @river_name
    end

    assert_redirected_to river_names_path
  end
end
