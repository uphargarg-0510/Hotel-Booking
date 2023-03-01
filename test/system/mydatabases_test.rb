require "application_system_test_case"

class MydatabasesTest < ApplicationSystemTestCase
  setup do
    @mydatabase = mydatabases(:one)
  end

  test "visiting the index" do
    visit mydatabases_url
    assert_selector "h1", text: "Mydatabases"
  end

  test "should create mydatabase" do
    visit mydatabases_url
    click_on "New mydatabase"

    fill_in "Email", with: @mydatabase.email
    fill_in "End time", with: @mydatabase.end_time
    fill_in "First name", with: @mydatabase.first_name
    fill_in "Last name", with: @mydatabase.last_name
    fill_in "No of rooms", with: @mydatabase.no_of_rooms
    fill_in "Payment type", with: @mydatabase.payment_type
    fill_in "Room type", with: @mydatabase.room_type
    fill_in "Start time", with: @mydatabase.start_time
    fill_in "Tip", with: @mydatabase.tip
    fill_in "Total payment", with: @mydatabase.total_payment
    click_on "Create Mydatabase"

    assert_text "Mydatabase was successfully created"
    click_on "Back"
  end

  test "should update Mydatabase" do
    visit mydatabase_url(@mydatabase)
    click_on "Edit this mydatabase", match: :first

    fill_in "Email", with: @mydatabase.email
    fill_in "End time", with: @mydatabase.end_time
    fill_in "First name", with: @mydatabase.first_name
    fill_in "Last name", with: @mydatabase.last_name
    fill_in "No of rooms", with: @mydatabase.no_of_rooms
    fill_in "Payment type", with: @mydatabase.payment_type
    fill_in "Room type", with: @mydatabase.room_type
    fill_in "Start time", with: @mydatabase.start_time
    fill_in "Tip", with: @mydatabase.tip
    fill_in "Total payment", with: @mydatabase.total_payment
    click_on "Update Mydatabase"

    assert_text "Mydatabase was successfully updated"
    click_on "Back"
  end

  test "should destroy Mydatabase" do
    visit mydatabase_url(@mydatabase)
    click_on "Destroy this mydatabase", match: :first

    assert_text "Mydatabase was successfully destroyed"
  end
end
