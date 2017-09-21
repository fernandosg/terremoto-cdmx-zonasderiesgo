class AddDireccionCompletaToReporteDano < ActiveRecord::Migration[5.1]
  def change
    add_column :reporte_danos, :direccion_completa, :string
  end
end
