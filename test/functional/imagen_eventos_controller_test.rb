require 'test_helper'

class ImagenEventosControllerTest < ActionController::TestCase
  setup do
    @imagen_evento = imagen_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagen_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagen_evento" do
    assert_difference('ImagenEvento.count') do
      post :create, imagen_evento: @imagen_evento.attributes
    end

    assert_redirected_to imagen_evento_path(assigns(:imagen_evento))
  end

  test "should show imagen_evento" do
    get :show, id: @imagen_evento.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagen_evento.to_param
    assert_response :success
  end

  test "should update imagen_evento" do
    put :update, id: @imagen_evento.to_param, imagen_evento: @imagen_evento.attributes
    assert_redirected_to imagen_evento_path(assigns(:imagen_evento))
  end

  test "should destroy imagen_evento" do
    assert_difference('ImagenEvento.count', -1) do
      delete :destroy, id: @imagen_evento.to_param
    end

    assert_redirected_to imagen_eventos_path
  end
end
