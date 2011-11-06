require 'test_helper'

class CharlasControllerTest < ActionController::TestCase
  setup do
    @charla = charlas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charlas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charla" do
    assert_difference('Charla.count') do
      post :create, charla: @charla.attributes
    end

    assert_redirected_to charla_path(assigns(:charla))
  end

  test "should show charla" do
    get :show, id: @charla.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charla.to_param
    assert_response :success
  end

  test "should update charla" do
    put :update, id: @charla.to_param, charla: @charla.attributes
    assert_redirected_to charla_path(assigns(:charla))
  end

  test "should destroy charla" do
    assert_difference('Charla.count', -1) do
      delete :destroy, id: @charla.to_param
    end

    assert_redirected_to charlas_path
  end
end
