require "application_system_test_case"

class RulecontentsTest < ApplicationSystemTestCase
  setup do
    @rulecontent = rulecontents(:one)
  end

  test "visiting the index" do
    visit rulecontents_url
    assert_selector "h1", text: "Rulecontents"
  end

  test "creating a Rulecontent" do
    visit rulecontents_url
    click_on "New Rulecontent"

    fill_in "Column1", with: @rulecontent.column1
    fill_in "Column2", with: @rulecontent.column2
    fill_in "Content", with: @rulecontent.content
    click_on "Create Rulecontent"

    assert_text "Rulecontent was successfully created"
    click_on "Back"
  end

  test "updating a Rulecontent" do
    visit rulecontents_url
    click_on "Edit", match: :first

    fill_in "Column1", with: @rulecontent.column1
    fill_in "Column2", with: @rulecontent.column2
    fill_in "Content", with: @rulecontent.content
    click_on "Update Rulecontent"

    assert_text "Rulecontent was successfully updated"
    click_on "Back"
  end

  test "destroying a Rulecontent" do
    visit rulecontents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rulecontent was successfully destroyed"
  end
end
