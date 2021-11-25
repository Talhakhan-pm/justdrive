require "test_helper"

class Host::VehiclesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get host_vehicles_new_url
    assert_response :success
  end

  test "should get edit" do
    get host_vehicles_edit_url
    assert_response :success
  end

  test "should get index" do
    get host_vehicles_index_url
    assert_response :success
  end

  test "should get show" do
    get host_vehicles_show_url
    assert_response :success
  end

  test "should get create" do
    get host_vehicles_create_url
    assert_response :success
  end

  test "should get update" do
    get host_vehicles_update_url
    assert_response :success
  end
end
