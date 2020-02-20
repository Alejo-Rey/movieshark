#!/bin/bash
rails generate scaffold pelicula nombre descripcion url_imagen dia_funcion:datetime funcion:references
rails generate scaffold funcion pelicula dia:datetime num_sillas:integer
rails generate scaffold user cedula:integer nombre correo celular
rails generate scaffold reserva dia:datetime user:references funcion:references
rake db:create
rake db:migrate