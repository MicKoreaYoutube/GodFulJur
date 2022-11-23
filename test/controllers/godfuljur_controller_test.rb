require 'test_helper'

class GodfuljurControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get godfuljur_home_url
    assert_response :success
  end

end
