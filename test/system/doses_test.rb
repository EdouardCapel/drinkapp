require "application_system_test_case"

class DosesTest < ApplicationSystemTestCase
  setup do
    @dose = doses(:one)
  end

  test "visiting the index" do
    visit doses_url
    assert_selector "h1", text: "Doses"
  end

  test "creating a Dose" do
    visit doses_url
    click_on "New Dose"

    fill_in "Cocktail", with: @dose.cocktail_id
    fill_in "Description", with: @dose.description
    fill_in "Ingredient", with: @dose.ingredient_id
    click_on "Create Dose"

    assert_text "Dose was successfully created"
    click_on "Back"
  end

  test "updating a Dose" do
    visit doses_url
    click_on "Edit", match: :first

    fill_in "Cocktail", with: @dose.cocktail_id
    fill_in "Description", with: @dose.description
    fill_in "Ingredient", with: @dose.ingredient_id
    click_on "Update Dose"

    assert_text "Dose was successfully updated"
    click_on "Back"
  end

  test "destroying a Dose" do
    visit doses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dose was successfully destroyed"
  end
end
