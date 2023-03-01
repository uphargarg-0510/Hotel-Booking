json.extract! bookroom, :id, :first_name, :last_name, :email, :room_type, :no_of_rooms, :start_time, :end_time, :payment_type, :total_payment, :tip, :created_at, :updated_at
json.url bookroom_url(bookroom, format: :json)
