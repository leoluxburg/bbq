class AddCoordinatesToBarbacoa < ActiveRecord::Migration[5.0]
  def change
    add_column :barbacoas, :latitude, :float
    add_column :barbacoas, :longitude, :float
  end
end
