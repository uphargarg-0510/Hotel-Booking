require "test_helper"

class BookroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookroom = bookrooms(:one)
  end

  test "should get index" do
    get bookrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_bookroom_url
    assert_response :success
  end

  test "should create bookroom" do
    assert_difference("Bookroom.count") do
      post bookrooms_url, params: { bookroom: { email: @bookroom.email, end_time: @bookroom.end_time, first_name: @bookroom.first_name, last_name: @bookroom.last_name, no_of_rooms: @bookroom.no_of_rooms, payment_type: @bookroom.payment_type, room_type: @bookroom.room_type, start_time: @bookroom.start_time, tip: @bookroom.tip, total_payment: @bookroom.total_payment } }
    end

    assert_redirected_to bookroom_url(Bookroom.last)
  end

  test "should show bookroom" do
    get bookroom_url(@bookroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookroom_url(@bookroom)
    assert_response :success
  end

  test "should update bookroom" do
    patch bookroom_url(@bookroom), params: { bookroom: { email: @bookroom.email, end_time: @bookroom.end_time, first_name: @bookroom.first_name, last_name: @bookroom.last_name, no_of_rooms: @bookroom.no_of_rooms, payment_type: @bookroom.payment_type, room_type: @bookroom.room_type, start_time: @bookroom.start_time, tip: @bookroom.tip, total_payment: @bookroom.total_payment } }
    assert_redirected_to bookroom_url(@bookroom)
  end

  test "should destroy bookroom" do
    assert_difference("Bookroom.count", -1) do
      delete bookroom_url(@bookroom)
    end

    assert_redirected_to bookrooms_url
  end
end
