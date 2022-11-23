require "application_system_test_case"

class GuidelinesTest < ApplicationSystemTestCase
  setup do
    @guideline = guidelines(:one)
  end

  test "visiting the index" do
    visit guidelines_url
    assert_selector "h1", text: "Guidelines"
  end

  test "creating a Guideline" do
    visit guidelines_url
    click_on "New Guideline"

    fill_in "Name", with: @guideline.name
    click_on "Create Guideline"

    assert_text "Guideline was successfully created"
    click_on "Back"
  end

  test "updating a Guideline" do
    visit guidelines_url
    click_on "Edit", match: :first

    fill_in "Name", with: @guideline.name
    click_on "Update Guideline"

    assert_text "Guideline was successfully updated"
    click_on "Back"
  end

  test "destroying a Guideline" do
    visit guidelines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guideline was successfully destroyed"
  end
end
