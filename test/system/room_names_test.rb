require "application_system_test_case"

class RoomNamesTest < ApplicationSystemTestCase
  setup do
    @room_name = room_names(:one)
  end

  test "visiting the index" do
    visit room_names_url
    assert_selector "h1", text: "Room Names"
  end

  test "creating a Room name" do
    visit room_names_url
    click_on "New Room Name"

    fill_in "Name", with: @room_name.name
    click_on "Create Room name"

    assert_text "Room name was successfully created"
    click_on "Back"
  end

  test "updating a Room name" do
    visit room_names_url
    click_on "Edit", match: :first

    fill_in "Name", with: @room_name.name
    click_on "Update Room name"

    assert_text "Room name was successfully updated"
    click_on "Back"
  end

  test "destroying a Room name" do
    visit room_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room name was successfully destroyed"
  end
end
