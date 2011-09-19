require 'test_helper'

class UserpostsControllerTest < ActionController::TestCase
  setup do
    @userpost = userposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userpost" do
    assert_difference('Userpost.count') do
      post :create, :userpost => @userpost.attributes
    end

    assert_redirected_to userpost_path(assigns(:userpost))
  end

  test "should show userpost" do
    get :show, :id => @userpost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @userpost.to_param
    assert_response :success
  end

  test "should update userpost" do
    put :update, :id => @userpost.to_param, :userpost => @userpost.attributes
    assert_redirected_to userpost_path(assigns(:userpost))
  end

  test "should destroy userpost" do
    assert_difference('Userpost.count', -1) do
      delete :destroy, :id => @userpost.to_param
    end

    assert_redirected_to userposts_path
  end
end
