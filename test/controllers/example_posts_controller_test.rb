require 'test_helper'

class ExamplePostsControllerTest < ActionController::TestCase
  setup do
    @example_post = example_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:example_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create example_post" do
    assert_difference('ExamplePost.count') do
      post :create, example_post: { content: @example_post.content, title: @example_post.title }
    end

    assert_redirected_to example_post_path(assigns(:example_post))
  end

  test "should show example_post" do
    get :show, id: @example_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @example_post
    assert_response :success
  end

  test "should update example_post" do
    patch :update, id: @example_post, example_post: { content: @example_post.content, title: @example_post.title }
    assert_redirected_to example_post_path(assigns(:example_post))
  end

  test "should destroy example_post" do
    assert_difference('ExamplePost.count', -1) do
      delete :destroy, id: @example_post
    end

    assert_redirected_to example_posts_path
  end
end
