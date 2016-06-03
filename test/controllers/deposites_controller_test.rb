require 'test_helper'

class DepositesControllerTest < ActionController::TestCase
  setup do
    @deposite = deposites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deposites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deposite" do
    assert_difference('Deposite.count') do
      post :create, deposite: { ammount: @deposite.ammount, date: @deposite.date }
    end

    assert_redirected_to deposite_path(assigns(:deposite))
  end

  test "should show deposite" do
    get :show, id: @deposite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deposite
    assert_response :success
  end

  test "should update deposite" do
    patch :update, id: @deposite, deposite: { ammount: @deposite.ammount, date: @deposite.date }
    assert_redirected_to deposite_path(assigns(:deposite))
  end

  test "should destroy deposite" do
    assert_difference('Deposite.count', -1) do
      delete :destroy, id: @deposite
    end

    assert_redirected_to deposites_path
  end
end
