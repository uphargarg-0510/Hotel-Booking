require "test_helper"

class MydatabasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mydatabase = mydatabases(:one)
  end

  test "should get index" do
    get mydatabases_url
    assert_response :success
  end

  test "should get new" do
    get new_mydatabase_url
    assert_response :success
  end

  test "should create mydatabase" do
    assert_difference("Mydatabase.count") do
      post mydatabases_url, params: { mydatabase: { email: @mydatabase.email, end_time: @mydatabase.end_time, first_name: @mydatabase.first_name, last_name: @mydatabase.last_name, no_of_rooms: @mydatabase.no_of_rooms, payment_type: @mydatabase.payment_type, room_type: @mydatabase.room_type, start_time: @mydatabase.start_time, tip: @mydatabase.tip, total_payment: @mydatabase.total_payment } }
    end

    assert_redirected_to mydatabase_url(Mydatabase.last)
  end

  test "should show mydatabase" do
    get mydatabase_url(@mydatabase)
    assert_response :success
  end

  test "should get edit" do
    get edit_mydatabase_url(@mydatabase)
    assert_response :success
  end

  test "should update mydatabase" do
    patch mydatabase_url(@mydatabase), params: { mydatabase: { email: @mydatabase.email, end_time: @mydatabase.end_time, first_name: @mydatabase.first_name, last_name: @mydatabase.last_name, no_of_rooms: @mydatabase.no_of_rooms, payment_type: @mydatabase.payment_type, room_type: @mydatabase.room_type, start_time: @mydatabase.start_time, tip: @mydatabase.tip, total_payment: @mydatabase.total_payment } }
    assert_redirected_to mydatabase_url(@mydatabase)
  end

  test "should destroy mydatabase" do
    assert_difference("Mydatabase.count", -1) do
      delete mydatabase_url(@mydatabase)
    end

    assert_redirected_to mydatabases_url
  end
end
