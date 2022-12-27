require "application_system_test_case"

class VenihlesTest < ApplicationSystemTestCase
  setup do
    @venihle = venihles(:one)
  end

  test "visiting the index" do
    visit venihles_url
    assert_selector "h1", text: "Venihles"
  end

  test "creating a Venihle" do
    visit venihles_url
    click_on "New Venihle"

    click_on "Create Venihle"

    assert_text "Venihle was successfully created"
    click_on "Back"
  end

  test "updating a Venihle" do
    visit venihles_url
    click_on "Edit", match: :first

    click_on "Update Venihle"

    assert_text "Venihle was successfully updated"
    click_on "Back"
  end

  test "destroying a Venihle" do
    visit venihles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Venihle was successfully destroyed"
  end
end
