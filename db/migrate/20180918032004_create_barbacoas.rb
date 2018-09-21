class CreateBarbacoas < ActiveRecord::Migration[5.0]
  def change
    create_table :barbacoas do |t|
      t.string :titulo
      t.string :modelo
      t.boolean :disponible
      t.text :descripcion
      t.decimal :precio
      t.references :perfil, foreign_key: true

      t.timestamps
    end
  end
end
