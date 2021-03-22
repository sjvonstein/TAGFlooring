require "test_helper"

class RoomNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_name = room_names(:one)
  end

  test "should get index" do
    get room_names_url
    assert_response :success
  end

  test "should get new" do
    get new_room_name_url
    assert_response :success
  end

  test "should create room_name" do
    assert_difference('RoomName.count') do
      post room_names_url, params: { room_name: { name: @room_name.name } }
    end

    assert_redirected_to room_name_url(RoomName.last)
  end

  test "should show room_name" do
    get room_name_url(@room_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_name_url(@room_name)
    assert_response :success
  end

  test "should update room_name" do
    patch room_name_url(@room_name), params: { room_name: { name: @room_name.name } }
    assert_redirected_to room_name_url(@room_name)
  end

  test "should destroy room_name" do
    assert_difference('RoomName.count', -1) do
      delete room_name_url(@room_name)
    end

    assert_redirected_to room_names_url
  end
end
