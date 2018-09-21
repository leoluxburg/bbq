class AddAdressToBarbacoas < ActiveRecord::Migration[5.0]
  def change
        add_column :barbacoas, :address, :string
  end
end
