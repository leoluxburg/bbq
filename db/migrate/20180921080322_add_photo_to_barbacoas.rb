class AddPhotoToBarbacoas < ActiveRecord::Migration[5.0]
  def change
    add_column :barbacoas, :photo, :string
  end
end
