require "application_system_test_case"

class GeneratesTest < ApplicationSystemTestCase
  setup do
    @generate = generates(:one)
  end

  test "visiting the index" do
    visit generates_url
    assert_selector "h1", text: "Generates"
  end

  test "creating a Generate" do
    visit generates_url
    click_on "New Generate"

    fill_in "Hotel", with: @generate.Hotel
    fill_in "Branch", with: @generate.branch_id
    fill_in "Branch name", with: @generate.branch_name
    fill_in "City", with: @generate.city
    fill_in "Country", with: @generate.country
    fill_in "Manager", with: @generate.manager_id
    fill_in "Pincode", with: @generate.pincode
    fill_in "Stars", with: @generate.stars
    fill_in "Street address", with: @generate.street_address
    click_on "Create Generate"

    assert_text "Generate was successfully created"
    click_on "Back"
  end

  test "updating a Generate" do
    visit generates_url
    click_on "Edit", match: :first

    fill_in "Hotel", with: @generate.Hotel
    fill_in "Branch", with: @generate.branch_id
    fill_in "Branch name", with: @generate.branch_name
    fill_in "City", with: @generate.city
    fill_in "Country", with: @generate.country
    fill_in "Manager", with: @generate.manager_id
    fill_in "Pincode", with: @generate.pincode
    fill_in "Stars", with: @generate.stars
    fill_in "Street address", with: @generate.street_address
    click_on "Update Generate"

    assert_text "Generate was successfully updated"
    click_on "Back"
  end

  test "destroying a Generate" do
    visit generates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Generate was successfully destroyed"
  end
end
