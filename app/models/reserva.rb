class Reserva < ApplicationRecord
  belongs_to :user
  belongs_to :funcion
end
