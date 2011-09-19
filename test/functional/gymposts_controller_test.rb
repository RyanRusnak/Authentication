require 'test_helper'

class GympostsControllerTest < ActionController::TestCase
  setup do
    @gympost = gymposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gymposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gympost" do
    assert_difference('Gympost.count') do
      post :create, :gympost => @gympost.attributes
    end

    assert_redirected_to gympost_path(assigns(:gympost))
  end

  test "should show gympost" do
    get :show, :id => @gympost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gympost.to_param
    assert_response :success
  end

  test "should update gympost" do
    put :update, :id => @gympost.to_param, :gympost => @gympost.attributes
    assert_redirected_to gympost_path(assigns(:gympost))
  end

  test "should destroy gympost" do
    assert_difference('Gympost.count', -1) do
      delete :destroy, :id => @gympost.to_param
    end

    assert_redirected_to gymposts_path
  end
end
