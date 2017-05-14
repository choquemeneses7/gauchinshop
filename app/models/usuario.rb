class Usuario < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "Ambos Campos deben coincidir", if: :password
end
