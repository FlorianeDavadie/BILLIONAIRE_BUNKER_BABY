require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name:string" do
    get users_first_name:string_url
    assert_response :success
  end

  test "should get last_name:string" do
    get users_last_name:string_url
    assert_response :success
  end

  test "should get email:text" do
    get users_email:text_url
    assert_response :success
  end

  test "should get password:text" do
    get users_password:text_url
    assert_response :success
  end
end
