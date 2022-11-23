require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get store" do
    get store_store_url
    assert_response :success
  end

end
