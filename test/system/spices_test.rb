require "application_system_test_case"

class SpicesTest < ApplicationSystemTestCase
  setup do
    @spice = spices(:one)
  end

  test "visiting the index" do
    visit spices_url
    assert_selector "h1", text: "Spices"
  end

  test "should create spice" do
    visit spices_url
    click_on "New spice"

    check "Ground" if @spice.ground
    fill_in "Name", with: @spice.name
    fill_in "Quantity", with: @spice.quantity
    fill_in "Unit", with: @spice.unit
    click_on "Create Spice"

    assert_text "Spice was successfully created"
    click_on "Back"
  end

  test "should update Spice" do
    visit spice_url(@spice)
    click_on "Edit this spice", match: :first

    check "Ground" if @spice.ground
    fill_in "Name", with: @spice.name
    fill_in "Quantity", with: @spice.quantity
    fill_in "Unit", with: @spice.unit
    click_on "Update Spice"

    assert_text "Spice was successfully updated"
    click_on "Back"
  end

  test "should destroy Spice" do
    visit spice_url(@spice)
    click_on "Destroy this spice", match: :first

    assert_text "Spice was successfully destroyed"
  end
end
