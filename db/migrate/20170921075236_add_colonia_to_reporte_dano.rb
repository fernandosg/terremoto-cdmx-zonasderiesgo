class AddColoniaToReporteDano < ActiveRecord::Migration[5.1]
  def change
    add_column :reporte_danos, :colonia, :string
  end
end
