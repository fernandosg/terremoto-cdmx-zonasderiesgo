class CreateTipoDanos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_danos,id: :uuid do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
