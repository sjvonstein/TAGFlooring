require "test_helper"

class InstallationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @installation = installations(:one)
  end

  test "should get index" do
    get installations_url
    assert_response :success
  end

  test "should get new" do
    get new_installation_url
    assert_response :success
  end

  test "should create installation" do
    assert_difference('Installation.count') do
      post installations_url, params: { installation: { install_date: @installation.install_date, installer_id: @installation.installer_id, product_id: @installation.product_id, room_name_id: @installation.room_name_id, unit_id: @installation.unit_id } }
    end

    assert_redirected_to installation_url(Installation.last)
  end

  test "should show installation" do
    get installation_url(@installation)
    assert_response :success
  end

  test "should get edit" do
    get edit_installation_url(@installation)
    assert_response :success
  end

  test "should update installation" do
    patch installation_url(@installation), params: { installation: { install_date: @installation.install_date, installer_id: @installation.installer_id, product_id: @installation.product_id, room_name_id: @installation.room_name_id, unit_id: @installation.unit_id } }
    assert_redirected_to installation_url(@installation)
  end

  test "should destroy installation" do
    assert_difference('Installation.count', -1) do
      delete installation_url(@installation)
    end

    assert_redirected_to installations_url
  end
end
