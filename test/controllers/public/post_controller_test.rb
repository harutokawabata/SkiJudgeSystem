require 'test_helper'

class Public::PostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_post_index_url
    assert_response :success
  end

  test "should get new" do
    get public_post_new_url
    assert_response :success
  end

  test "should get create" do
    get public_post_create_url
    assert_response :success
  end

end
