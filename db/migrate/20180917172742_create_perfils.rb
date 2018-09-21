class CreatePerfils < ActiveRecord::Migration[5.0]
  def change
    create_table :perfils do |t|
      t.string :nombre
      t.string :apellido
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
