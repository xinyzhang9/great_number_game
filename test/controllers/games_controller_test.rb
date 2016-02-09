require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get generate" do
    get :generate
    assert_response :success
  end

  test "should get reset" do
    get :reset
    assert_response :success
  end

end
