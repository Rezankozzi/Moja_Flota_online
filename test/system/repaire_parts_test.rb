require "application_system_test_case"

class RepairePartsTest < ApplicationSystemTestCase
  setup do
    @repaire_part = repaire_parts(:one)
  end

  test "visiting the index" do
    visit repaire_parts_url
    assert_selector "h1", text: "Repaire Parts"
  end

  test "creating a Repaire part" do
    visit repaire_parts_url
    click_on "New Repaire Part"

    click_on "Create Repaire part"

    assert_text "Repaire part was successfully created"
    click_on "Back"
  end

  test "updating a Repaire part" do
    visit repaire_parts_url
    click_on "Edit", match: :first

    click_on "Update Repaire part"

    assert_text "Repaire part was successfully updated"
    click_on "Back"
  end

  test "destroying a Repaire part" do
    visit repaire_parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repaire part was successfully destroyed"
  end
end
