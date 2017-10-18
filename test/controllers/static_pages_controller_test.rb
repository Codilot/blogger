require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Blogger"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Blogger"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Blogger"
  end

end
