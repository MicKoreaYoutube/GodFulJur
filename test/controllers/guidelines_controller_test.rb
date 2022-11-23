require 'test_helper'

class GuidelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guideline = guidelines(:one)
  end

  test "should get index" do
    get guidelines_url
    assert_response :success
  end

  test "should get new" do
    get new_guideline_url
    assert_response :success
  end

  test "should create guideline" do
    assert_difference('Guideline.count') do
      post guidelines_url, params: { guideline: { name: @guideline.name } }
    end

    assert_redirected_to guideline_url(Guideline.last)
  end

  test "should show guideline" do
    get guideline_url(@guideline)
    assert_response :success
  end

  test "should get edit" do
    get edit_guideline_url(@guideline)
    assert_response :success
  end

  test "should update guideline" do
    patch guideline_url(@guideline), params: { guideline: { name: @guideline.name } }
    assert_redirected_to guideline_url(@guideline)
  end

  test "should destroy guideline" do
    assert_difference('Guideline.count', -1) do
      delete guideline_url(@guideline)
    end

    assert_redirected_to guidelines_url
  end
end
