require "test_helper"

class KeyMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @key_master = key_masters(:one)
  end

  test "should get index" do
    get key_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_key_master_url
    assert_response :success
  end

  test "should create key_master" do
    assert_difference('KeyMaster.count') do
      post key_masters_url, params: { key_master: { management_room: @key_master.management_room, room_name: @key_master.room_name } }
    end

    assert_redirected_to key_master_url(KeyMaster.last)
  end

  test "should show key_master" do
    get key_master_url(@key_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_key_master_url(@key_master)
    assert_response :success
  end

  test "should update key_master" do
    patch key_master_url(@key_master), params: { key_master: { management_room: @key_master.management_room, room_name: @key_master.room_name } }
    assert_redirected_to key_master_url(@key_master)
  end

  test "should destroy key_master" do
    assert_difference('KeyMaster.count', -1) do
      delete key_master_url(@key_master)
    end

    assert_redirected_to key_masters_url
  end
end
