class Barbacoa < ApplicationRecord
  belongs_to :perfil
  mount_uploader :photo, PhotoUploader

end
