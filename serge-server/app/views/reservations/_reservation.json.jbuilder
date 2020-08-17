json.extract! reservation, :id, :trip_id, :type, :cost, :date_and_time, :location, :nickname, :details, :is_paid, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
