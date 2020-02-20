json.extract! pelicula, :id, :nombre, :descripcion, :url_imagen, :dia_funcion, :funcion_id, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)
