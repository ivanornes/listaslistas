require 'test_helper'

class ImagenDiscosControllerTest < ActionController::TestCase
  setup do
    @imagen_disco = imagen_discos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagen_discos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagen_disco" do
    assert_difference('ImagenDisco.count') do
      post :create, imagen_disco: @imagen_disco.attributes
    end

    assert_redirected_to imagen_disco_path(assigns(:imagen_disco))
  end

  test "should show imagen_disco" do
    get :show, id: @imagen_disco.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagen_disco.to_param
    assert_response :success
  end

  test "should update imagen_disco" do
    put :update, id: @imagen_disco.to_param, imagen_disco: @imagen_disco.attributes
    assert_redirected_to imagen_disco_path(assigns(:imagen_disco))
  end

  test "should destroy imagen_disco" do
    assert_difference('ImagenDisco.count', -1) do
      delete :destroy, id: @imagen_disco.to_param
    end

    assert_redirected_to imagen_discos_path
  end
end
