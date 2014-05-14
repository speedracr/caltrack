require 'test_helper'

class MinimealsControllerTest < ActionController::TestCase
  setup do
    @minimeal = minimeals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minimeals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minimeal" do
    assert_difference('Minimeal.count') do
      post :create, minimeal: { date: @minimeal.date, food: @minimeal.food, grams: @minimeal.grams, user: @minimeal.user }
    end

    assert_redirected_to minimeal_path(assigns(:minimeal))
  end

  test "should show minimeal" do
    get :show, id: @minimeal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @minimeal
    assert_response :success
  end

  test "should update minimeal" do
    patch :update, id: @minimeal, minimeal: { date: @minimeal.date, food: @minimeal.food, grams: @minimeal.grams, user: @minimeal.user }
    assert_redirected_to minimeal_path(assigns(:minimeal))
  end

  test "should destroy minimeal" do
    assert_difference('Minimeal.count', -1) do
      delete :destroy, id: @minimeal
    end

    assert_redirected_to minimeals_path
  end
end
