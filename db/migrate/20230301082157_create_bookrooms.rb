class CreateBookrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :bookrooms do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :room_type
      t.integer :no_of_rooms
      t.time :start_time
      t.time :end_time
      t.string :payment_type
      t.integer :total_payment
      t.integer :tip

      t.timestamps
    end
  end
end
