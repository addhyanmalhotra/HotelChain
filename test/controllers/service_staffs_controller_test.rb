require "test_helper"

class ServiceStaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_staff = service_staffs(:one)
  end

  test "should get index" do
    get service_staffs_url
    assert_response :success
  end

  test "should get new" do
    get new_service_staff_url
    assert_response :success
  end

  test "should create service_staff" do
    assert_difference('ServiceStaff.count') do
      post service_staffs_url, params: { service_staff: { department: @service_staff.department, emp_id: @service_staff.emp_id } }
    end

    assert_redirected_to service_staff_url(ServiceStaff.last)
  end

  test "should show service_staff" do
    get service_staff_url(@service_staff)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_staff_url(@service_staff)
    assert_response :success
  end

  test "should update service_staff" do
    patch service_staff_url(@service_staff), params: { service_staff: { department: @service_staff.department, emp_id: @service_staff.emp_id } }
    assert_redirected_to service_staff_url(@service_staff)
  end

  test "should destroy service_staff" do
    assert_difference('ServiceStaff.count', -1) do
      delete service_staff_url(@service_staff)
    end

    assert_redirected_to service_staffs_url
  end
end
