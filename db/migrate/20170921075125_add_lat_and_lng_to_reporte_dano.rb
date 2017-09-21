class AddLatAndLngToReporteDano < ActiveRecord::Migration[5.1]
  def change
    add_column :reporte_danos, :lat, :decimal
    add_column :reporte_danos, :lng, :decimal
  end
end
