require 'test_helper'

class Public::EventUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_event_users_index_url
    assert_response :success
  end

  test "should get new" do
    get public_event_users_new_url
    assert_response :success
  end

  test "should get create" do
    get public_event_users_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_event_users_destroy_url
    assert_response :success
  end

  test "should get update" do
    get public_event_users_update_url
    assert_response :success
  end

end
