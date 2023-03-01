require "application_system_test_case"

class BookroomsTest < ApplicationSystemTestCase
  setup do
    @bookroom = bookrooms(:one)
  end

  test "visiting the index" do
    visit bookrooms_url
    assert_selector "h1", text: "Bookrooms"
  end

  test "should create bookroom" do
    visit bookrooms_url
    click_on "New bookroom"

    fill_in "Email", with: @bookroom.email
    fill_in "End time", with: @bookroom.end_time
    fill_in "First name", with: @bookroom.first_name
    fill_in "Last name", with: @bookroom.last_name
    fill_in "No of rooms", with: @bookroom.no_of_rooms
    fill_in "Payment type", with: @bookroom.payment_type
    fill_in "Room type", with: @bookroom.room_type
    fill_in "Start time", with: @bookroom.start_time
    fill_in "Tip", with: @bookroom.tip
    fill_in "Total payment", with: @bookroom.total_payment
    click_on "Create Bookroom"

    assert_text "Bookroom was successfully created"
    click_on "Back"
  end

  test "should update Bookroom" do
    visit bookroom_url(@bookroom)
    click_on "Edit this bookroom", match: :first

    fill_in "Email", with: @bookroom.email
    fill_in "End time", with: @bookroom.end_time
    fill_in "First name", with: @bookroom.first_name
    fill_in "Last name", with: @bookroom.last_name
    fill_in "No of rooms", with: @bookroom.no_of_rooms
    fill_in "Payment type", with: @bookroom.payment_type
    fill_in "Room type", with: @bookroom.room_type
    fill_in "Start time", with: @bookroom.start_time
    fill_in "Tip", with: @bookroom.tip
    fill_in "Total payment", with: @bookroom.total_payment
    click_on "Update Bookroom"

    assert_text "Bookroom was successfully updated"
    click_on "Back"
  end

  test "should destroy Bookroom" do
    visit bookroom_url(@bookroom)
    click_on "Destroy this bookroom", match: :first

    assert_text "Bookroom was successfully destroyed"
  end
end
