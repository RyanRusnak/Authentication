require 'test_helper'

class GymPostsControllerTest < ActionController::TestCase
  setup do
    @gym_post = gym_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gym_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gym_post" do
    assert_difference('GymPost.count') do
      post :create, :gym_post => @gym_post.attributes
    end

    assert_redirected_to gym_post_path(assigns(:gym_post))
  end

  test "should show gym_post" do
    get :show, :id => @gym_post.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gym_post.to_param
    assert_response :success
  end

  test "should update gym_post" do
    put :update, :id => @gym_post.to_param, :gym_post => @gym_post.attributes
    assert_redirected_to gym_post_path(assigns(:gym_post))
  end

  test "should destroy gym_post" do
    assert_difference('GymPost.count', -1) do
      delete :destroy, :id => @gym_post.to_param
    end

    assert_redirected_to gym_posts_path
  end
end
