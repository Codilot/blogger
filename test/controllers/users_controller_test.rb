require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
    assert_select "title", "Sign up | Blogger"
  end
   test "should get login" do
    get login_path
    assert_response :success
    assert_select "title", "Login | Blogger"
  end

end
