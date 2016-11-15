class CreateRouteRequests < ActiveRecord::Migration
  def change
    create_table :route_requests do |t|
      t.text :origin_query
      t.string :origin_city
      t.string :origin_place
      t.integer :origin_google_id
      t.text :destination_query
      t.string :destination_city
      t.string :destination_place
      t.string :destination_google_id
      t.datetime :destination_arrival_date_time
      t.time :max_time_in_advance
      t.integer :user_id
      t.time :origin_google_suggested_departure_time

      t.timestamps

    end
  end
end
