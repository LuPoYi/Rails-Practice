require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get introduce" do
    get :introduce
    assert_response :success
  end

end
