class CreateNomDeTonModels < ActiveRecord::Migration[7.0]
  def change
    create_table :nom_de_ton_models do |t|

      t.timestamps
    end
  end
end
