class Perfil < ApplicationRecord
  belongs_to :user
  has_many :barbacoas
  validates :nombre, :apellido, :phone, presence: true, on: :update

end
