require "application_system_test_case"

class InstallersTest < ApplicationSystemTestCase
  setup do
    @installer = installers(:one)
  end

  test "visiting the index" do
    visit installers_url
    assert_selector "h1", text: "Installers"
  end

  test "creating a Installer" do
    visit installers_url
    click_on "New Installer"

    fill_in "Name", with: @installer.name
    click_on "Create Installer"

    assert_text "Installer was successfully created"
    click_on "Back"
  end

  test "updating a Installer" do
    visit installers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @installer.name
    click_on "Update Installer"

    assert_text "Installer was successfully updated"
    click_on "Back"
  end

  test "destroying a Installer" do
    visit installers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Installer was successfully destroyed"
  end
end
