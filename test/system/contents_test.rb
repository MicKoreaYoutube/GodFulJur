require "application_system_test_case"

class ContentsTest < ApplicationSystemTestCase
  setup do
    @content = contents(:one)
  end

  test "visiting the index" do
    visit contents_url
    assert_selector "h1", text: "Contents"
  end

  test "creating a Content" do
    visit contents_url
    click_on "New Content"

    fill_in "Column1", with: @content.column1
    fill_in "Column2", with: @content.column2
    fill_in "Content", with: @content.content
    click_on "Create Content"

    assert_text "Content was successfully created"
    click_on "Back"
  end

  test "updating a Content" do
    visit contents_url
    click_on "Edit", match: :first

    fill_in "Column1", with: @content.column1
    fill_in "Column2", with: @content.column2
    fill_in "Content", with: @content.content
    click_on "Update Content"

    assert_text "Content was successfully updated"
    click_on "Back"
  end

  test "destroying a Content" do
    visit contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Content was successfully destroyed"
  end
end
