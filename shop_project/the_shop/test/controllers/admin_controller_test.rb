require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get all_users" do
    get admin_all_users_url
    assert_response :success
  end

  test "should get edit_user" do
    get admin_edit_user_url
    assert_response :success
  end

  test "should get show_user" do
    get admin_show_user_url
    assert_response :success
  end

  test "should get delete_user" do
    get admin_delete_user_url
    assert_response :success
  end

end
