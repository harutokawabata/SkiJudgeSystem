require 'test_helper'

class Admins::EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_events_new_url
    assert_response :success
  end

  test "should get edit" do
    get admins_events_edit_url
    assert_response :success
  end

  test "should get create" do
    get admins_events_create_url
    assert_response :success
  end

  test "should get update" do
    get admins_events_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_events_destroy_url
    assert_response :success
  end

end
