require "application_system_test_case"

class NeighbourhoodsTest < ApplicationSystemTestCase
  setup do
    @neighbourhood = neighbourhoods(:one)
  end

  test "visiting the index" do
    visit neighbourhoods_url
    assert_selector "h1", text: "Neighbourhoods"
  end

  test "should create neighbourhood" do
    visit neighbourhoods_url
    click_on "New neighbourhood"

    fill_in "Name", with: @neighbourhood.name
    fill_in "Polygons", with: @neighbourhood.polygons
    click_on "Create Neighbourhood"

    assert_text "Neighbourhood was successfully created"
    click_on "Back"
  end

  test "should update Neighbourhood" do
    visit neighbourhood_url(@neighbourhood)
    click_on "Edit this neighbourhood", match: :first

    fill_in "Name", with: @neighbourhood.name
    fill_in "Polygons", with: @neighbourhood.polygons
    click_on "Update Neighbourhood"

    assert_text "Neighbourhood was successfully updated"
    click_on "Back"
  end

  test "should destroy Neighbourhood" do
    visit neighbourhood_url(@neighbourhood)
    click_on "Destroy this neighbourhood", match: :first

    assert_text "Neighbourhood was successfully destroyed"
  end
end
