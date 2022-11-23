require 'test_helper'

class Category1ControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get category1_create_url
    assert_response :success
  end

  test "should get update" do
    get category1_update_url
    assert_response :success
  end

  test "should get destroy" do
    get category1_destroy_url
    assert_response :success
  end

end
