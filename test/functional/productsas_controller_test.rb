require 'test_helper'

class ProductsasControllerTest < ActionController::TestCase
  setup do
    @productsa = productsas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productsas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productsa" do
    assert_difference('Productsa.count') do
      post :create, productsa: { name: @productsa.name, price: @productsa.price }
    end

    assert_redirected_to productsa_path(assigns(:productsa))
  end

  test "should show productsa" do
    get :show, id: @productsa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productsa
    assert_response :success
  end

  test "should update productsa" do
    put :update, id: @productsa, productsa: { name: @productsa.name, price: @productsa.price }
    assert_redirected_to productsa_path(assigns(:productsa))
  end

  test "should destroy productsa" do
    assert_difference('Productsa.count', -1) do
      delete :destroy, id: @productsa
    end

    assert_redirected_to productsas_path
  end
end
