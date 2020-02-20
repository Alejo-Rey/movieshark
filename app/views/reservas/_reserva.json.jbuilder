json.extract! reserva, :id, :dia, :user_id, :funcion_id, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
