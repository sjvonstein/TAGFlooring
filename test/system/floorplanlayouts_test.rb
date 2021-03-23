require "application_system_test_case"

class FloorplanlayoutsTest < ApplicationSystemTestCase
  setup do
    @floorplanlayout = floorplanlayouts(:one)
  end

  test "visiting the index" do
    visit floorplanlayouts_url
    assert_selector "h1", text: "Floorplanlayouts"
  end

  test "creating a Floorplanlayout" do
    visit floorplanlayouts_url
    click_on "New Floorplanlayout"

    fill_in "Floorplan", with: @floorplanlayout.floorplan_id
    fill_in "Room name", with: @floorplanlayout.room_name_id
    click_on "Create Floorplanlayout"

    assert_text "Floorplanlayout was successfully created"
    click_on "Back"
  end

  test "updating a Floorplanlayout" do
    visit floorplanlayouts_url
    click_on "Edit", match: :first

    fill_in "Floorplan", with: @floorplanlayout.floorplan_id
    fill_in "Room name", with: @floorplanlayout.room_name_id
    click_on "Update Floorplanlayout"

    assert_text "Floorplanlayout was successfully updated"
    click_on "Back"
  end

  test "destroying a Floorplanlayout" do
    visit floorplanlayouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Floorplanlayout was successfully destroyed"
  end
end
