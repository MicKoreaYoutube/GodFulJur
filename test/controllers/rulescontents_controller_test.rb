require 'test_helper'

class RulescontentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rulescontent = rulescontents(:one)
  end

  test "should get index" do
    get rulescontents_url
    assert_response :success
  end

  test "should get new" do
    get new_rulescontent_url
    assert_response :success
  end

  test "should create rulescontent" do
    assert_difference('Rulescontent.count') do
      post rulescontents_url, params: { rulescontent: { column1: @rulescontent.column1, column2: @rulescontent.column2, content: @rulescontent.content } }
    end

    assert_redirected_to rulescontent_url(Rulescontent.last)
  end

  test "should show rulescontent" do
    get rulescontent_url(@rulescontent)
    assert_response :success
  end

  test "should get edit" do
    get edit_rulescontent_url(@rulescontent)
    assert_response :success
  end

  test "should update rulescontent" do
    patch rulescontent_url(@rulescontent), params: { rulescontent: { column1: @rulescontent.column1, column2: @rulescontent.column2, content: @rulescontent.content } }
    assert_redirected_to rulescontent_url(@rulescontent)
  end

  test "should destroy rulescontent" do
    assert_difference('Rulescontent.count', -1) do
      delete rulescontent_url(@rulescontent)
    end

    assert_redirected_to rulescontents_url
  end
end
