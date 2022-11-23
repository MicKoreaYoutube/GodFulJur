require "application_system_test_case"

class RulescontentsTest < ApplicationSystemTestCase
  setup do
    @rulescontent = rulescontents(:one)
  end

  test "visiting the index" do
    visit rulescontents_url
    assert_selector "h1", text: "Rulescontents"
  end

  test "creating a Rulescontent" do
    visit rulescontents_url
    click_on "New Rulescontent"

    fill_in "Column1", with: @rulescontent.column1
    fill_in "Column2", with: @rulescontent.column2
    fill_in "Content", with: @rulescontent.content
    click_on "Create Rulescontent"

    assert_text "Rulescontent was successfully created"
    click_on "Back"
  end

  test "updating a Rulescontent" do
    visit rulescontents_url
    click_on "Edit", match: :first

    fill_in "Column1", with: @rulescontent.column1
    fill_in "Column2", with: @rulescontent.column2
    fill_in "Content", with: @rulescontent.content
    click_on "Update Rulescontent"

    assert_text "Rulescontent was successfully updated"
    click_on "Back"
  end

  test "destroying a Rulescontent" do
    visit rulescontents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rulescontent was successfully destroyed"
  end
end
