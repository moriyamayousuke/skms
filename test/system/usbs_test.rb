require "application_system_test_case"

class UsbsTest < ApplicationSystemTestCase
  setup do
    @usb = usbs(:one)
  end

  test "visiting the index" do
    visit usbs_url
    assert_selector "h1", text: "Usbs"
  end

  test "creating a Usb" do
    visit usbs_url
    click_on "New Usb"

    fill_in "Class number", with: @usb.class_number
    fill_in "Grade", with: @usb.grade
    fill_in "Start date", with: @usb.start_date
    fill_in "User name", with: @usb.user_name
    click_on "Create Usb"

    assert_text "Usb was successfully created"
    click_on "Back"
  end

  test "updating a Usb" do
    visit usbs_url
    click_on "Edit", match: :first

    fill_in "Class number", with: @usb.class_number
    fill_in "Grade", with: @usb.grade
    fill_in "Start date", with: @usb.start_date
    fill_in "User name", with: @usb.user_name
    click_on "Update Usb"

    assert_text "Usb was successfully updated"
    click_on "Back"
  end

  test "destroying a Usb" do
    visit usbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usb was successfully destroyed"
  end
end
