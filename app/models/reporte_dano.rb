class ReporteDano < ApplicationRecord
  belongs_to :tipo_dano
  belongs_to :delegacion
  belongs_to :entidad

  def self.obtener_por_delegacion ciudad
    return ReporteDano.where delegacion_id:ciudad
  end

  def self.obtener_por_tipo_dano tipo_dano_id
    return ReporteDano.where tipo_dano_id:tipo_dano_id
  end
end
