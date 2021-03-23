require "test_helper"

class FloorplanlayoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @floorplanlayout = floorplanlayouts(:one)
  end

  test "should get index" do
    get floorplanlayouts_url
    assert_response :success
  end

  test "should get new" do
    get new_floorplanlayout_url
    assert_response :success
  end

  test "should create floorplanlayout" do
    assert_difference('Floorplanlayout.count') do
      post floorplanlayouts_url, params: { floorplanlayout: { floorplan_id: @floorplanlayout.floorplan_id, room_name_id: @floorplanlayout.room_name_id } }
    end

    assert_redirected_to floorplanlayout_url(Floorplanlayout.last)
  end

  test "should show floorplanlayout" do
    get floorplanlayout_url(@floorplanlayout)
    assert_response :success
  end

  test "should get edit" do
    get edit_floorplanlayout_url(@floorplanlayout)
    assert_response :success
  end

  test "should update floorplanlayout" do
    patch floorplanlayout_url(@floorplanlayout), params: { floorplanlayout: { floorplan_id: @floorplanlayout.floorplan_id, room_name_id: @floorplanlayout.room_name_id } }
    assert_redirected_to floorplanlayout_url(@floorplanlayout)
  end

  test "should destroy floorplanlayout" do
    assert_difference('Floorplanlayout.count', -1) do
      delete floorplanlayout_url(@floorplanlayout)
    end

    assert_redirected_to floorplanlayouts_url
  end
end
