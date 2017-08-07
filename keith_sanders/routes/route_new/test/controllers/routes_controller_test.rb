require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get say" do
    get :say
    assert_response :success
  end

end
