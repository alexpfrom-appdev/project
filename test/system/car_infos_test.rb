require "application_system_test_case"

class CarInfosTest < ApplicationSystemTestCase
  setup do
    @car_info = car_infos(:one)
  end

  test "visiting the index" do
    visit car_infos_url
    assert_selector "h1", text: "Car Infos"
  end

  test "creating a Car info" do
    visit car_infos_url
    click_on "New Car Info"

    fill_in "Car lease info", with: @car_info.car_lease_info
    fill_in "Car mark", with: @car_info.car_mark
    fill_in "Car number", with: @car_info.car_number
    fill_in "Car type", with: @car_info.car_type
    fill_in "Misc info", with: @car_info.misc_info
    fill_in "User", with: @car_info.user_id
    click_on "Create Car info"

    assert_text "Car info was successfully created"
    click_on "Back"
  end

  test "updating a Car info" do
    visit car_infos_url
    click_on "Edit", match: :first

    fill_in "Car lease info", with: @car_info.car_lease_info
    fill_in "Car mark", with: @car_info.car_mark
    fill_in "Car number", with: @car_info.car_number
    fill_in "Car type", with: @car_info.car_type
    fill_in "Misc info", with: @car_info.misc_info
    fill_in "User", with: @car_info.user_id
    click_on "Update Car info"

    assert_text "Car info was successfully updated"
    click_on "Back"
  end

  test "destroying a Car info" do
    visit car_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car info was successfully destroyed"
  end
end
