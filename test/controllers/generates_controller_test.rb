require "test_helper"

class GeneratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generate = generates(:one)
  end

  test "should get index" do
    get generates_url
    assert_response :success
  end

  test "should get new" do
    get new_generate_url
    assert_response :success
  end

  test "should create generate" do
    assert_difference('Generate.count') do
      post generates_url, params: { generate: { Hotel: @generate.Hotel, branch_id: @generate.branch_id, branch_name: @generate.branch_name, city: @generate.city, country: @generate.country, manager_id: @generate.manager_id, pincode: @generate.pincode, stars: @generate.stars, street_address: @generate.street_address } }
    end

    assert_redirected_to generate_url(Generate.last)
  end

  test "should show generate" do
    get generate_url(@generate)
    assert_response :success
  end

  test "should get edit" do
    get edit_generate_url(@generate)
    assert_response :success
  end

  test "should update generate" do
    patch generate_url(@generate), params: { generate: { Hotel: @generate.Hotel, branch_id: @generate.branch_id, branch_name: @generate.branch_name, city: @generate.city, country: @generate.country, manager_id: @generate.manager_id, pincode: @generate.pincode, stars: @generate.stars, street_address: @generate.street_address } }
    assert_redirected_to generate_url(@generate)
  end

  test "should destroy generate" do
    assert_difference('Generate.count', -1) do
      delete generate_url(@generate)
    end

    assert_redirected_to generates_url
  end
end
