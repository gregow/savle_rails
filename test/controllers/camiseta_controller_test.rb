require 'test_helper'

class CamisetaControllerTest < ActionController::TestCase
  setup do
    @camisetum = camiseta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camiseta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camisetum" do
    assert_difference('Camisetum.count') do
      post :create, camisetum: { medida_1: @camisetum.medida_1, nome: @camisetum.nome }
    end

    assert_redirected_to camisetum_path(assigns(:camisetum))
  end

  test "should show camisetum" do
    get :show, id: @camisetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camisetum
    assert_response :success
  end

  test "should update camisetum" do
    patch :update, id: @camisetum, camisetum: { medida_1: @camisetum.medida_1, nome: @camisetum.nome }
    assert_redirected_to camisetum_path(assigns(:camisetum))
  end

  test "should destroy camisetum" do
    assert_difference('Camisetum.count', -1) do
      delete :destroy, id: @camisetum
    end

    assert_redirected_to camiseta_path
  end
end
