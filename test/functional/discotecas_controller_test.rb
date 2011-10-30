require 'test_helper'

class DiscotecasControllerTest < ActionController::TestCase
  setup do
    @discoteca = discotecas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discotecas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discoteca" do
    assert_difference('Discoteca.count') do
      post :create, discoteca: @discoteca.attributes
    end

    assert_redirected_to discoteca_path(assigns(:discoteca))
  end

  test "should show discoteca" do
    get :show, id: @discoteca.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discoteca.to_param
    assert_response :success
  end

  test "should update discoteca" do
    put :update, id: @discoteca.to_param, discoteca: @discoteca.attributes
    assert_redirected_to discoteca_path(assigns(:discoteca))
  end

  test "should destroy discoteca" do
    assert_difference('Discoteca.count', -1) do
      delete :destroy, id: @discoteca.to_param
    end

    assert_redirected_to discotecas_path
  end
end
