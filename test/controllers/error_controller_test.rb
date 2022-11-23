require 'test_helper'

class ErrorControllerTest < ActionDispatch::IntegrationTest
  test "should get 404" do
    get error_404_url
    assert_response :success
  end

end
