require "test_helper"

class UsbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usb = usbs(:one)
  end

  test "should get index" do
    get usbs_url
    assert_response :success
  end

  test "should get new" do
    get new_usb_url
    assert_response :success
  end

  test "should create usb" do
    assert_difference('Usb.count') do
      post usbs_url, params: { usb: { class_number: @usb.class_number, grade: @usb.grade, start_date: @usb.start_date, user_name: @usb.user_name } }
    end

    assert_redirected_to usb_url(Usb.last)
  end

  test "should show usb" do
    get usb_url(@usb)
    assert_response :success
  end

  test "should get edit" do
    get edit_usb_url(@usb)
    assert_response :success
  end

  test "should update usb" do
    patch usb_url(@usb), params: { usb: { class_number: @usb.class_number, grade: @usb.grade, start_date: @usb.start_date, user_name: @usb.user_name } }
    assert_redirected_to usb_url(@usb)
  end

  test "should destroy usb" do
    assert_difference('Usb.count', -1) do
      delete usb_url(@usb)
    end

    assert_redirected_to usbs_url
  end
end
