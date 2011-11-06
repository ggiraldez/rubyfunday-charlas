require 'test_helper'

class OradoresControllerTest < ActionController::TestCase
  setup do
    @orador = oradores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oradores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orador" do
    assert_difference('Orador.count') do
      post :create, orador: @orador.attributes
    end

    assert_redirected_to orador_path(assigns(:orador))
  end

  test "should show orador" do
    get :show, id: @orador.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orador.to_param
    assert_response :success
  end

  test "should update orador" do
    put :update, id: @orador.to_param, orador: @orador.attributes
    assert_redirected_to orador_path(assigns(:orador))
  end

  test "should destroy orador" do
    assert_difference('Orador.count', -1) do
      delete :destroy, id: @orador.to_param
    end

    assert_redirected_to oradores_path
  end
end
