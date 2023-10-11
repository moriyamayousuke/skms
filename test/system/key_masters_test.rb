require "application_system_test_case"

class KeyMastersTest < ApplicationSystemTestCase
  setup do
    @key_master = key_masters(:one)
  end

  test "visiting the index" do
    visit key_masters_url
    assert_selector "h1", text: "Key Masters"
  end

  test "creating a Key master" do
    visit key_masters_url
    click_on "New Key Master"

    fill_in "Management room", with: @key_master.management_room
    fill_in "Room name", with: @key_master.room_name
    click_on "Create Key master"

    assert_text "Key master was successfully created"
    click_on "Back"
  end

  test "updating a Key master" do
    visit key_masters_url
    click_on "Edit", match: :first

    fill_in "Management room", with: @key_master.management_room
    fill_in "Room name", with: @key_master.room_name
    click_on "Update Key master"

    assert_text "Key master was successfully updated"
    click_on "Back"
  end

  test "destroying a Key master" do
    visit key_masters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Key master was successfully destroyed"
  end
end
