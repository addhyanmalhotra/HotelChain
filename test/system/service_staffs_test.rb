require "application_system_test_case"

class ServiceStaffsTest < ApplicationSystemTestCase
  setup do
    @service_staff = service_staffs(:one)
  end

  test "visiting the index" do
    visit service_staffs_url
    assert_selector "h1", text: "Service Staffs"
  end

  test "creating a Service staff" do
    visit service_staffs_url
    click_on "New Service Staff"

    fill_in "Department", with: @service_staff.department
    fill_in "Emp", with: @service_staff.emp_id
    click_on "Create Service staff"

    assert_text "Service staff was successfully created"
    click_on "Back"
  end

  test "updating a Service staff" do
    visit service_staffs_url
    click_on "Edit", match: :first

    fill_in "Department", with: @service_staff.department
    fill_in "Emp", with: @service_staff.emp_id
    click_on "Update Service staff"

    assert_text "Service staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Service staff" do
    visit service_staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service staff was successfully destroyed"
  end
end
