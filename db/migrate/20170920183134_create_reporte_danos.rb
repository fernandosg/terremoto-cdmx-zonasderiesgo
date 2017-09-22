class CreateReporteDanos < ActiveRecord::Migration[5.1]
  def change
    create_table :reporte_danos,id: :uuid do |t|
      t.references :tipo_dano, foreign_key: true, type: :uuid
      t.references :entidad, foreign_key: true, type: :uuid
      t.references :delegacion, foreign_key: true, type: :uuid
      t.string :nombre_lugar
      t.string :descripcion
      t.string :calle
      t.integer :numero_exterior
      t.integer :codigo_postal
      t.string :entre_calles
      t.integer :personas_heridas_fallecidas
      t.integer :personas_afectadas
      t.text :apoyo_necesario
      t.text :informacion_contacto
      t.text :informacion_extra

      t.timestamps
    end
  end
end
