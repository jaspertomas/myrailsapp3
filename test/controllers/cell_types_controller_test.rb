require 'test_helper'

class CellTypesControllerTest < ActionController::TestCase
  setup do
    @cell_type = cell_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cell_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell_type" do
    assert_difference('CellType.count') do
      post :create, cell_type: { description: @cell_type.description, name: @cell_type.name, values: @cell_type.values }
    end

    assert_redirected_to cell_type_path(assigns(:cell_type))
  end

  test "should show cell_type" do
    get :show, id: @cell_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell_type
    assert_response :success
  end

  test "should update cell_type" do
    patch :update, id: @cell_type, cell_type: { description: @cell_type.description, name: @cell_type.name, values: @cell_type.values }
    assert_redirected_to cell_type_path(assigns(:cell_type))
  end

  test "should destroy cell_type" do
    assert_difference('CellType.count', -1) do
      delete :destroy, id: @cell_type
    end

    assert_redirected_to cell_types_path
  end
end
