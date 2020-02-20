json.extract! user, :id, :cedula, :nombre, :correo, :celular, :created_at, :updated_at
json.url user_url(user, format: :json)
