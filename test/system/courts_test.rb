require "application_system_test_case"

class CourtsTest < ApplicationSystemTestCase
  setup do
    @court = courts(:one)
  end

  test "visiting the index" do
    visit courts_url
    assert_selector "h1", text: "Courts"
  end

  test "creating a Court" do
    visit courts_url
    click_on "New Court"

    fill_in "Access", with: @court.access
    fill_in "Address", with: @court.address
    fill_in "Holiday", with: @court.holiday
    fill_in "Hours", with: @court.hours
    fill_in "Latitude", with: @court.latitude
    fill_in "Logitude", with: @court.logitude
    fill_in "Nearest station", with: @court.nearest_station
    check "Parking" if @court.parking
    fill_in "Store email", with: @court.store_email
    fill_in "Store name", with: @court.store_name
    fill_in "Tel", with: @court.tel
    fill_in "Url", with: @court.url
    click_on "Create Court"

    assert_text "Court was successfully created"
    click_on "Back"
  end

  test "updating a Court" do
    visit courts_url
    click_on "Edit", match: :first

    fill_in "Access", with: @court.access
    fill_in "Address", with: @court.address
    fill_in "Holiday", with: @court.holiday
    fill_in "Hours", with: @court.hours
    fill_in "Latitude", with: @court.latitude
    fill_in "Logitude", with: @court.logitude
    fill_in "Nearest station", with: @court.nearest_station
    check "Parking" if @court.parking
    fill_in "Store email", with: @court.store_email
    fill_in "Store name", with: @court.store_name
    fill_in "Tel", with: @court.tel
    fill_in "Url", with: @court.url
    click_on "Update Court"

    assert_text "Court was successfully updated"
    click_on "Back"
  end

  test "destroying a Court" do
    visit courts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Court was successfully destroyed"
  end
end
