require 'test_helper'

class GymBlogPostsControllerTest < ActionController::TestCase
  setup do
    @gym_blog_post = gym_blog_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gym_blog_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gym_blog_post" do
    assert_difference('GymBlogPost.count') do
      post :create, :gym_blog_post => @gym_blog_post.attributes
    end

    assert_redirected_to gym_blog_post_path(assigns(:gym_blog_post))
  end

  test "should show gym_blog_post" do
    get :show, :id => @gym_blog_post.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gym_blog_post.to_param
    assert_response :success
  end

  test "should update gym_blog_post" do
    put :update, :id => @gym_blog_post.to_param, :gym_blog_post => @gym_blog_post.attributes
    assert_redirected_to gym_blog_post_path(assigns(:gym_blog_post))
  end

  test "should destroy gym_blog_post" do
    assert_difference('GymBlogPost.count', -1) do
      delete :destroy, :id => @gym_blog_post.to_param
    end

    assert_redirected_to gym_blog_posts_path
  end
end
